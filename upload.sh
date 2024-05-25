if [ -f ~/rom/out/target/product/mido/Matrixx-*.zip ]; then
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="Uploading Build $(cd ~/rom/out/target/product/mido/ && ls Matrixx-*.zip)"
      rclone copy ~/rom/out/target/product/mido/Matrixx-*.zip cirrus:mido -P
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="Build $(cd ~/rom/out/target/product/mido/ && ls Matrixx-*.zip) Uploaded Successfully!"
fi