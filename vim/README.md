# Tips

Set value of a "text" setting:

    :set backspace=indent,eol
    :set history=200

Set value of a "boolean" setting:

    :set compatible          " true
    :set nocompatible        " false

Get current value of a "text" setting:

    :set tabstop             " It will print 'tabstop=' or 'tabstop=<value>'

Get current value of a "boolean" setting:

    :set expandtab?          " You will get 'expandtab' or 'noexpandtab'
    :set noexpandtab?        " You will get the same result 

Invert boolean value:

	:set autoindent! 		 " Inverts the option. 'autoindent' becomes 'noautoindent'

Revert option of any type to default:

	:set history&  			 " Reverts to default value 50

Find file, where "text" setting was set:

	:verbose set scrolloff   " You will get 'Last set from <file>'

Don't know yet how to find files for "boolean" settings...

View list of all loaded vim scripts, including various "vimrc". 
Helps to get chain of loaded configuration and plugin scripts.

    :scriptnames

View settings different from defaults:

    :set

View all settings and their values:

	:set all

Set settings only for the current buffer:

    :setlocal smartindent




