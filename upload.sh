if [ -f ~/rom/out/target/product/chime/TenX-OS*.zip ]; then
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="Uploading Build $(cd ~/rom/out/target/product/chime/ && ls TenX-OS*.zip)"
      rclone copy ~/rom/out/target/product/chime/TenX-OS*.zip fk09:chime -P
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="Build $(cd ~/rom/out/target/product/chime/ && ls TenX-OS*.zip) Uploaded Successfully!"
fi
