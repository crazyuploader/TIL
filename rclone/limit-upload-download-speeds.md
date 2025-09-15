# Limit Upload Download Speeds in Rclone

Sometimes, we may want to limit/throttle download/upload speeds in Rclone, and that's where `--bwlimit` flag comes into play!

## Usage

This will restrict speeds for both downloads and uploads to 10 MB/s, for more granular control for download/upload speeds individually, we can specify the speeds in `upload:download` format.

```code
$ rclone copy my-bucket:my-important . --bwlimit 10M
```

Here, the upload & download speeds are restricted to 10 MB/s & 20 MB/s respectively.

```code
$ rclone copy my-bucket:my-important . --bwlimit 10M:20M
```

Here, the upload speed is restricted to 10 MB/s, while there's no restriction on download speeds; unlimited speed! 🚀🚀🚀

```code
$ rclone copy my-bucket:my-important . --bwlimit 10M:off
```

**_Reference: [Rclone Docs](https://rclone.org/docs/#bwlimit-bwtimetable)_**
