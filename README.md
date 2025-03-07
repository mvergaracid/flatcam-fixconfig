# flatcam-fixconfig

#Running Flatcam
 docker run --rm -it -e DISPLAY=host.docker.internal:0 -v /<user_path_to_projects_with_gerber_files>:/projects -v <local_path_with_fix>FlatCAMApp.py:/usr/local/lib/python3.8/dist-packages/flatcam/FlatCAMApp.py -v /tmp/.X11-unix:/tmp/.X11-unix -v <path_to_local_config>/defaults.json:/root/.FlatCAM/defaults.json:ro flatcam

 With this hack was possible to me work with my eagle proyects!

In file: <local_path_with_fix>FlatCAMApp.py , do you need fix this:

 1. Find line 2136 (around):

 2. When appears:

name = outname or filename.split('/')[-1].split('\\')[-1]

Replace it with:

if isinstance(filename, tuple):  # Handle tuple input
    filename = filename[0]
name = outname or filename.split('/')[-1].split('\\')[-1]

3. Save and run
