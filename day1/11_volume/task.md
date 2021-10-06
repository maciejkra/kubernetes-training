# Volumes

## display volume

`docker volume <?>`

# Attach volume

1. Build image from `01_volume_ls`
2. Run container 
3. `touch /tmp/something` on your hard drive
3. Run container with `-v /tmp:/data <image_name> /data`

File something should be displayed

# Create volume and add :ro flag

1. Create volume `<??> volume my-volume`
2. List new volume
3. Run 2 containers with sh running in CMD (`alpine` for example)
- Run first with `-v my-volume:/data:ro`
- Run second with `-v my-volume:/data`
1. In second container create new file in `/data` folder
2. Verify first container can read file
3. Verify first container can't write file to `/data`
