# backup.sh
Bitwarden 服务器数据备份脚本

## 脚本功能
- 打包 Bitwarden 数据文件为 tar.gz 文件
- 用 [Dropbox-Uploader](https://github.com/andreafabrizi/Dropbox-Uploader/) 把压缩文件上传到 Dropbox
- 用 [rclone](https://github.com/rclone/rclone) 把压缩文件上传到 WebDav 网盘
- 清理 7 天以上的压缩文件

## 依赖项目
- [Dropbox-Uploader](https://github.com/andreafabrizi/Dropbox-Uploader/)
- [rclone](https://github.com/rclone/rclone)

## 可选功能
- 上传至 rclone 支持的其他存储
- 设置清理 n 天以上的压缩文件
