class Jmaxml::WaterLevelStation
  extend SS::Translation
  include SS::Document
  include SS::Reference::Site
  include Cms::SitePermission

  set_permission_name "cms_tools", :use

  seqid :id
  field :code, type: String
  field :name, type: String
  field :region_name, type: String
  field :order, type: Integer, default: 0
  field :state, type: String, default: 'enabled'
  validates :code, presence: true, length: { maximum: 40 }, uniqueness: { scope: :site_id }
  validates :name, presence: true, length: { maximum: 40 }
  validates :region_name, length: { maximum: 40 }
  validates :state, inclusion: { in: %w(enabled disabled), allow_blank: true }
  permit_params :code, :name, :region_name, :order, :state

  index({ site_id: 1, code: 1 }, { unique: true })

  scope :and_enabled, -> { self.in(state: [nil, 'enabled']) }

  class << self
    def search(params = {})
      criteria = self.where({})
      return criteria if params.blank?

      if params[:name].present?
        criteria = criteria.search_text params[:name]
      end
      if params[:keyword].present?
        criteria = criteria.keyword_in params[:keyword], :code, :name, :region_name
      end
      criteria
    end
  end

  def state_options
    %w(enabled disabled).map do |v|
      [ I18n.t("ss.options.state.#{v}"), v ]
    end
  end
end
