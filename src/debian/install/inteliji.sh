#!/usr/bin/env bash
### every exit != 0 fails the script
set -e
echo "Tải xuống IntelliJ IDEA Community Edition..."
wget "https://download.jetbrains.com/idea/ideaIC-2023.2.tar.gz"
# Giải nén tệp tải xuống
echo "Giải nén IntelliJ IDEA..."
tar -xzf ideaIC-*.tar.gz
# Di chuyển IntelliJ IDEA vào thư mục /opt
mv idea-* /opt/intellij-idea
# Tạo liên kết tới thư mục bin của IntelliJ IDEA trong /usr/local/bin để chạy từ dòng lệnh
ln -s /opt/intellij-idea/bin/idea.sh /usr/local/bin/idea
# Thông báo hoàn tất
echo "Cài đặt IntelliJ IDEA thành công!"
