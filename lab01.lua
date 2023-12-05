#!/usr/bin/lua5.3

lgi = require ('lgi')

gtk = lgi.require ("Gtk","3.0")
gtk.init()

bld = gtk.Builder()
bld:add_from_file('lab01.glade')

ui = bld.objects

function f()
	print('HeLLLLOOOOO')
	
end

ui.button.on_clicked = f

ui.new_okno.title = 'g21_zotov lab01 c'
ui.new_okno.on_destroy = gtk.main_quit
ui.new_okno:show_all()

gtk.main()
