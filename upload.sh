if [ -f ~/rom/out/target/product/mido/voltage-*.zip ]; then
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="Uploading Build $(cd ~/rom/out/target/product/mido/ && ls voltage-*.zip)"
      rclone copy ~/rom/out/target/product/mido/voltage-*.zip cirrus:mido -P
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="Build $(cd ~/rom/out/target/product/mido/ && ls voltage-*.zip) Uploaded Successfully!"
fi