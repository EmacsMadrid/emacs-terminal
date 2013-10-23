emacs-terminal
==============

Pequeña guía sobre cómo integrar Emacs y tu emulador de terminal.

## Emacs no es VI/VIM ##

Si estás acostumbrado a utilizar vim o en peor aún, si estás acostumbrado a
"the unix philosophy", puede que al saltar a emacs te hayas percatado que su filosofía
no encaja muy bien con la de unix.

Probablemente utilizas vim junto a otros muchos programas disponibles en tu línea de comandos y te la pasas suspendiendo vim para volver al terminal, "piping" salidas de otros comandos a nuevos buffers de vim, y demás; pero en emacs la historia es diferente...

Emacs no es Unix, es decir, Ken Thompson fue uno de los participantes en la creación de Unix y fue él quien creó el editor de texto Ed, que luego Bill Joy mejoró con Ex y Vi. Esto quiere decir que *Vi nació en Unix* y Emacs nació en un sitio totalmente diferente, con otras reglas y otra filosofía, el Emacs que utilizas que probablemente sea GNU Emacs no es más que un _port_ a Unix del original. Emacs en concreto no es un editor de texto per se, sino la implementación virtual de una *Lisp Machine* que además tiene funciones de editor integradas.

...
