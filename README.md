# bandersnatch-docker
Bandernatch pypi syncer with Crond

Usage
------ 
Create container

  ```
  docker run -d --name bandersnatch -v /path/to/mirrors:/mirrors imquanquan/bandersnatch
  ```

The container will sync pypi 8pm every day
