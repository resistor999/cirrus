if [ -f ~/rom/out/target/product/citrus/ProjectBlaze-*.zip ]; then
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="Uploading Build $(cd ~/rom/out/target/product/citrus/ && ls ProjectBlaze-*.zip)"
      rclone copy ~/rom/out/target/product/citrus/ProjectBlaze-*.zip 298:citrus -P
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="Build $(cd ~/rom/out/target/product/citrus/ && ls ProjectBlaze-*.zip) Uploaded Successfully!"
fi
