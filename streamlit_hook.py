from PyInstaller.utils.hooks import collect_all, collect_data_files

datas, binaries, hiddenimports = collect_all('streamlit')

# Adicionar dados extras do Streamlit
datas += collect_data_files('streamlit')
datas += collect_data_files('altair')
datas += collect_data_files('plotly')

hiddenimports += [
    'streamlit.runtime.scriptrunner.magic_funcs',
    'streamlit.web.cli',
    'streamlit.web.bootstrap',
    'streamlit.runtime.caching.cache_data_api',
    'streamlit.runtime.caching.storage.local_disk_cache_storage',
    'altair',
    'typing_extensions',
]