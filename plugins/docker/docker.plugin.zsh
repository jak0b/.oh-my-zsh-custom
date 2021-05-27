function docker-image-size {
  image_id=${1:-.env}
  image_info=$(docker inspect $image_id 2>/dev/null)
  if [ ${?} -ne 0 ]; then
   echo "image: $image_id does not exist"
   exit 1
  else
    printf "%dMB\n" $(( $(echo $image_info | jq -r '.[].Size') / 1024 / 1024 ))
  fi
}
