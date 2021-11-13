if [[ ":$PATH:" == *":/usr/local/go/bin:"* ]]; then
  echo "Your go bin path is correctly set"
else
  echo "adding go bin to path"
  export PATH=$PATH:/usr/local/go/bin
fi

