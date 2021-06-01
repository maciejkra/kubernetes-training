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

First with `-v my-volume:/data:ro`
Second with `-v my-volume:/data`

4. In second container create new file in `/data` folder
5. Verify first container can read file
6. Verify first container can't write file to `/data`
