check_windows_hyphen(){
  echo $1 | od -cb | grep "342 200 223" > /dev/null
  RETURNCODE=$?
  if [ $RETURNCODE -eq 0 ]; then
    echo "copy & paste from M\$? check the hyphen."
    exit 1
  fi
}
