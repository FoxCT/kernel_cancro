for i in `find -name *.ko`; do cp $i ~/anykernel/AnyKernel2/modules/; done
dtbToolCM -s 2048 -d "qcom,msm-id = <" -2 -o arch/arm/boot/dt.img -p /usr/bin/ arch/arm/boot/
cp arch/arm/boot/zImage ~/anykernel/AnyKernel2/
cp arch/arm/boot/dt.img ~/anykernel/AnyKernel2/
cd ~/anykernel/AnyKernel2
DATE=$(date +"%m-%d-%y")
rm Z*
zip -r9 ZeurionXCAF--$DATE.zip * -x README ZeurionXCAF-$DATE.zip
sudo cp Z* /var/www/html/caf/
sudo chown -R www-data:www-data /var/www/html/caf/
