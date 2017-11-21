# bandersnatch-docker
Bandernatch pypi syncer with Crond

Usage
------ 
Create container

  ```
  docker run -d --name bandersnatch -v /path/to/mirrors:/mirrors imquanquan/bandersnatch
  ```

The container will sync pypi 6 o'clock every day
