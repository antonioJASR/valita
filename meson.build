project('com.github.antonioJASR.valita', 'vala', 'c')

dependencies = [
  dependency('glib-2.0'),
  dependency('gobject-2.0'),
  dependency('gtk+-3.0'),
]

sources = files('src/app.vala')

executable(
  meson.project_name(),
  sources, 
  dependencies: dependencies, 
  install: true
)

# Install our .desktop file so the Applications Menu will see it
install_data(
  join_paths('data', meson.project_name() + '.desktop'),
  install_dir: join_paths(get_option('datadir'), 'applications')
)

# Install our appdarta.xml so AppCenter will see it
install_data(
  join_paths('data', meson.project_name() + '.appdata.xml'),
  install_dir: join_paths(get_option('datadir'), 'metainfo')
)


install_data (
  join_paths('data', meson.project_name() + '.gschema.xml'),
  install_dir: join_paths (get_option ('datadir'), 'glib-2.0', 'schemas')
)
