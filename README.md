# ShellCheck

Unofficial build of ShellCheck, static analysis tool for shell scripts running
within a docker container.

## Changelog

```
v1.5
* Version bounced to 0.4.5.

v1.4
* Version bounced to 0.4.4.

v1.3
* Version bounced to 0.4.3.

v1.2
* Version bounced to 0.4.1.

v1.1
* Version bounced to 0.3.8.

v1.0
* Initial release (0.3.5).
```

## Launch Command

```bash
docker run -it --rm --name my_check \
  -v "$PWD":/usr/src -w /usr/src \
  mangoweb/shellcheck:latest FILE_A.sh FILE_B.sh
```

## Sources

shellcheck webapp: [http://www.shellcheck.net](http://www.shellcheck.net/)

Github: [https://github.com/koalaman/shellcheck](https://github.com/koalaman/shellcheck)
