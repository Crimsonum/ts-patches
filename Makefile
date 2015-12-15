-include config.mk

INPUT       = Game.exe
OUTPUT      = tibsun.exe
LDS         = tibsun.lds
IMPORTS     = 0x2EC050 280
LDFLAGS     = --file-alignment=0x1000 --section-alignment=0x1000 --subsystem=windows --enable-stdcall-fixup
NFLAGS      = -f elf -Iinc/
CFLAGS      = -std=c99 -Iinc/

OBJS        = \
              src/disable_max_windowed_mode.o \
              src/disable_dpi_scaling.o \
              src/sun.ini.o \
              src/remove_16bit_windowed_check.o \
              src/in-game_message_background.o \
              src/hp03.o \
              src/savegame.o \
              src/fix_mouse_not_found_error.o \
              src/single-proc-affinity.o \
              src/spawner/spawner.o \
              src/spawner/tunnel.o \
              src/spawner/nethack.o \
              src/spawner/selectable_spawns.o \
              src/spawner/spectators.o \
              src/spawner/statistics.o \
              src/spawner/build_off_ally.o \
              src/only_the_host_may_change_gamespeed.o \
              src/spawner/auto-surrender.o \
              src/trigger_actions_extended.o \
              src/briefing_screen_mission_start.o \
              src/briefing_restate_map_file.o \
              src/no-cd_iran.o \
              src/display_messages_typed_by_yourself.o \
              src/graphics_patch.o \
              src/multiplayer_units_placing.o \
              src/reinforcements_player_specific.o \
              src/no_options_menu_animation.o \
              src/internet_cncnet.o \
              src/tiberium_stuff.o \
              src/no_window_frame.o \
              src/short_connection_timeout.o \
              sym.o \
              rsrc.o

PETOOL     ?= petool
STRIP      ?= strip
NASM       ?= nasm

all: $(OUTPUT)

%.o: %.asm
	$(NASM) $(NFLAGS) -o $@ $<

rsrc.o: $(INPUT)
	$(PETOOL) re2obj $(INPUT) $@

$(OUTPUT): $(LDS) $(INPUT) $(OBJS)
	$(LD) $(LDFLAGS) -T $(LDS) -o $@ $(OBJS)
ifneq (,$(IMPORTS))
	$(PETOOL) setdd $@ 1 $(IMPORTS) || ($(RM) $@ && exit 1)
endif
	$(PETOOL) patch $@ || ($(RM) $@ && exit 1)
	$(STRIP) -R .patch $@ || ($(RM) $@ && exit 1)
	$(PETOOL) dump $@

clean:
	$(RM) $(OUTPUT) $(OBJS)
