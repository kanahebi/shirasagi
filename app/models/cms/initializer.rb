module Cms
  class Initializer
    Cms::Node.plugin "cms/node"
    Cms::Node.plugin "cms/page"
    Cms::Node.plugin "cms/import_node"
    Cms::Node.plugin "cms/archive"
    Cms::Node.plugin "cms/photo_album"
    Cms::Node.plugin "cms/group_page"
    Cms::Part.plugin "cms/free"
    Cms::Part.plugin "cms/node"
    Cms::Part.plugin "cms/page"
    Cms::Part.plugin "cms/tabs"
    Cms::Part.plugin "cms/crumb"
    Cms::Part.plugin "cms/sns_share"
    Cms::Part.plugin "cms/calendar_nav"
    Cms::Part.plugin "cms/monthly_nav"
    Cms::Column.plugin 'cms/text_field'
    Cms::Column.plugin 'cms/date_field'
    Cms::Column.plugin 'cms/url_field2'
    Cms::Column.plugin 'cms/text_area'
    Cms::Column.plugin 'cms/select'
    Cms::Column.plugin 'cms/radio_button'
    Cms::Column.plugin 'cms/check_box'
    Cms::Column.plugin 'cms/file_upload'
    Cms::Column.plugin 'cms/headline'
    Cms::Column.plugin 'cms/list'
    Cms::Column.plugin 'cms/youtube'
    Cms::Column.plugin 'cms/free'

    Cms::Role.permission :edit_cms_sites
    Cms::Role.permission :edit_cms_groups
    Cms::Role.permission :edit_cms_users
    Cms::Role.permission :edit_cms_roles
    Cms::Role.permission :edit_cms_members
    Cms::Role.permission :edit_cms_editor_templates
    Cms::Role.permission :edit_cms_loop_settings
    Cms::Role.permission :read_cms_body_layouts
    Cms::Role.permission :edit_cms_body_layouts
    Cms::Role.permission :delete_cms_body_layouts
    Cms::Role.permission :read_cms_commands
    Cms::Role.permission :edit_cms_commands
    Cms::Role.permission :delete_cms_commands
    Cms::Role.permission :use_cms_commands
    Cms::Role.permission :use_cms_tools
    Cms::Role.permission :use_cms_editor_extensions
    Cms::Role.permission :read_other_cms_nodes
    Cms::Role.permission :read_other_cms_pages
    Cms::Role.permission :read_other_cms_parts
    Cms::Role.permission :read_other_cms_layouts
    Cms::Role.permission :read_other_cms_files
    Cms::Role.permission :read_other_cms_notices
    Cms::Role.permission :read_other_cms_page_searches
    Cms::Role.permission :read_other_cms_forms
    Cms::Role.permission :read_private_cms_nodes
    Cms::Role.permission :read_private_cms_pages
    Cms::Role.permission :read_private_cms_parts
    Cms::Role.permission :read_private_cms_layouts
    Cms::Role.permission :read_private_cms_files
    Cms::Role.permission :read_private_cms_notices
    Cms::Role.permission :read_private_cms_page_searches
    Cms::Role.permission :read_private_cms_forms
    Cms::Role.permission :edit_other_cms_nodes
    Cms::Role.permission :edit_other_cms_pages
    Cms::Role.permission :edit_other_cms_parts
    Cms::Role.permission :edit_other_cms_layouts
    Cms::Role.permission :edit_other_cms_files
    Cms::Role.permission :edit_other_cms_notices
    Cms::Role.permission :edit_other_cms_page_searches
    Cms::Role.permission :edit_other_cms_forms
    Cms::Role.permission :edit_private_cms_nodes
    Cms::Role.permission :edit_private_cms_pages
    Cms::Role.permission :edit_private_cms_parts
    Cms::Role.permission :edit_private_cms_layouts
    Cms::Role.permission :edit_private_cms_files
    Cms::Role.permission :edit_private_cms_notices
    Cms::Role.permission :edit_private_cms_page_searches
    Cms::Role.permission :edit_private_cms_forms
    Cms::Role.permission :delete_other_cms_nodes
    Cms::Role.permission :delete_other_cms_pages
    Cms::Role.permission :delete_other_cms_parts
    Cms::Role.permission :delete_other_cms_layouts
    Cms::Role.permission :delete_other_cms_files
    Cms::Role.permission :delete_other_cms_notices
    Cms::Role.permission :delete_other_cms_page_searches
    Cms::Role.permission :delete_other_cms_forms
    Cms::Role.permission :delete_private_cms_nodes
    Cms::Role.permission :delete_private_cms_pages
    Cms::Role.permission :delete_private_cms_parts
    Cms::Role.permission :delete_private_cms_layouts
    Cms::Role.permission :delete_private_cms_files
    Cms::Role.permission :delete_private_cms_notices
    Cms::Role.permission :delete_private_cms_page_searches
    Cms::Role.permission :delete_private_cms_forms
    Cms::Role.permission :release_other_cms_pages
    Cms::Role.permission :release_private_cms_pages
    Cms::Role.permission :approve_other_cms_pages
    Cms::Role.permission :approve_private_cms_pages
    Cms::Role.permission :reroute_other_cms_pages
    Cms::Role.permission :reroute_private_cms_pages
    Cms::Role.permission :revoke_other_cms_pages
    Cms::Role.permission :revoke_private_cms_pages
    Cms::Role.permission :move_private_cms_nodes
    Cms::Role.permission :move_private_cms_pages
    Cms::Role.permission :move_other_cms_nodes
    Cms::Role.permission :move_other_cms_pages
    Cms::Role.permission :import_private_cms_nodes
    Cms::Role.permission :import_other_cms_nodes
    Cms::Role.permission :unlock_other_cms_pages

    SS::File.model "cms/editor_template", SS::File
    SS::File.model "cms/file", Cms::File
    SS::File.model "cms/page", SS::File
  end
end
