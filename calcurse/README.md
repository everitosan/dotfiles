# Calcurse

Un calendario para la terminal.  

La intención de este dotfile es mantener la configuración preferida y a su vez sincronizar por medio de un bucket de s3 la info del calendario.

## Instalación

Obtenermos el programa base
```bash
$ apt-ge install calcurse
```

## Configuración

Una vez que tengamos la base, podemos ejecutar el comando *init.sh* para automatizar la configuración de sincronización.

En este punto es importante hacer notar que ya se debe tener el [aws](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-prereqs.html)-cli [instalado](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html) y [configurado](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-quickstart.html).

```bash
$ ./init.sh
```

## Referencias
- https://www.calcurse.org/files/manual.html
