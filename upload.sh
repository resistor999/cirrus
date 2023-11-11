if [ -f ~/rom/out/target/product/citrus/evolution_citrus*.zip ]; then
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="Uploading Build $(cd ~/rom/out/target/product/citrus/ && ls evolution_citrus.zip)"
      rclone copy ~/rom/out/target/product/citrus/evolution_citrus*.zip 298:citrus -P
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="Build $(cd ~/rom/out/target/product/citrus/ && ls evolution_citrus*.zip) Uploaded Successfully!"
fi
