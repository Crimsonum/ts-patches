%include "macros/patch.inc"
%include "macros/datatypes.inc"
%include "TiberianSun.inc"

; Change bullet trailer separation
@SET 0x004447C5, {db 0x02}

; Increase max. bounces of elastic projectiles [commented out, causes issues on high bridges]
;@SET 0x00445516, {db 0x04}

; Change the distribution of cluster weapons [commented out for now]
;@SET 0x004465D6, {db 0x02} ; outer spread radius in leptons
;@SET 0x004465DB, {db 0x00} ; inner spread radius in leptons
;@SET 0x004465EA, {db 0x01} ; [bool] should clusters hit the center of the cell?

; Translucency fix (by Apollo)
@SET 0x00469350, {db 0xBA, 0xDE, 0xF7, 0, 0, 0x8B, 0x6C, 0x24, 0x2C, 0x31, 0xC9, 0x31, 0xC0, 0x66, 0x8B, 0x0B, 0x66, 0x8B, 0x44, 0x4D, 0, 0x8B, 0x4C, 0x24, 0x30, 0x08, 0xC8, 0x8B, 0x4C, 0x24, 0x10, 0x8B, 0x69, 0x04, 0x8B, 0x6C, 0x45, 0, 0x89, 0xE8, 0x33, 0x2F, 0x21, 0xD5, 0xD1, 0xED, 0x0B, 0x07, 0x29, 0xE8, 0x89, 0xC5, 0x33, 0x07, 0x09, 0xC5, 0x21, 0xD0, 0xD1, 0xE8, 0x29, 0xC5, 0x66, 0x89, 0x2F, 0x90, 0x90}
@SET 0x0046948E, {db 0x8B, 0x6C, 0x24, 0x2C, 0x31, 0xC9, 0x31, 0xC0, 0x66, 0x8B, 0x0B, 0x66, 0x8B, 0x44, 0x4D, 0, 0x8B, 0x4C, 0x24, 0x30, 0x8B, 0x6C, 0x24, 0x10, 0x81, 0xE1, 0xFF, 0, 0, 0, 0x09, 0xC8, 0x8B, 0x4D, 0x04, 0x8B, 0x04, 0x41, 0x8B, 0x0F, 0x89, 0xCE, 0x31, 0xC1, 0x09, 0xF0, 0x81, 0xE1, 0xDE, 0xF7, 0, 0, 0xD1, 0xE9, 0x29, 0xC8, 0x66, 0x89, 0x07, 0x90, 0x90}
@SET 0x004695C0, {db 0xBA, 0xDE, 0xF7, 0, 0, 0x8B, 0x6C, 0x24, 0x2C, 0x31, 0xC9, 0x31, 0xC0, 0x66, 0x8B, 0x0B, 0x66, 0x8B, 0x44, 0x4D, 0, 0x8B, 0x4C, 0x24, 0x30, 0x08, 0xC8, 0x8B, 0x4C, 0x24, 0x10, 0x8B, 0x69, 0x04, 0x8B, 0x44, 0x45, 0, 0x89, 0xC5, 0x33, 0x2F, 0x21, 0xD5, 0xD1, 0xED, 0x50, 0x0B, 0x07, 0x29, 0xE8, 0x5D, 0x31, 0xC5, 0x09, 0xE8, 0x21, 0xD5, 0xD1, 0xED, 0x29, 0xE8, 0x66, 0x89, 0x07, 0x90, 0x90}
@SET 0x0046BD3E, {db 0x66, 0xBE, 0xDE, 0xF7, 0x66, 0x8B, 0x0A, 0x31, 0xC0, 0x66, 0x8B, 0x44, 0x4D, 0, 0x8B, 0x4C, 0x24, 0x18, 0x81, 0xE1, 0xFF, 0, 0, 0, 0x8B, 0x6C, 0x24, 0x2C, 0x09, 0xC8, 0x8B, 0x4C, 0x24, 0x10, 0x8B, 0x49, 0x04, 0x8B, 0x04, 0x41, 0x89, 0xC1, 0x33, 0x0F, 0x21, 0xF1, 0xD1, 0xE9, 0x0B, 0x07, 0x29, 0xC8, 0x89, 0xC1, 0x33, 0x07, 0x09, 0xC1, 0x21, 0xF0, 0xD1, 0xE8, 0x29, 0xC1, 0x8B, 0x44, 0x24, 0x20, 0x66, 0x89, 0x0F, 0x47, 0x47}
@SET 0x0046BEF7, {db 0x66, 0x8B, 0x0E, 0x31, 0xC0, 0x66, 0x8B, 0x04, 0x4F, 0x8B, 0x4C, 0x24, 0x2C, 0x81, 0xE1, 0xFF, 0, 0, 0, 0x09, 0xC8, 0x8B, 0x4C, 0x24, 0x10, 0x8B, 0x49, 0x04, 0x8B, 0x04, 0x41, 0x8B, 0x0B, 0x89, 0xCA, 0x31, 0xC1, 0x09, 0xD0, 0x81, 0xE1, 0xDE, 0xF7, 0, 0, 0xD1, 0xE9, 0x29, 0xC8, 0x8B, 0x4C, 0x24, 0x20, 0x49, 0x66, 0x89, 0x03, 0x90, 0x90}
@SET 0x0046C0AE, {db 0x66, 0xBE, 0xDE, 0xF7, 0x66, 0x8B, 0x0A, 0x31, 0xC0, 0x66, 0x8B, 0x44, 0x4D, 0, 0x8B, 0x4C, 0x24, 0x18, 0x81, 0xE1, 0xFF, 0, 0, 0, 0x8B, 0x6C, 0x24, 0x2C, 0x09, 0xC8, 0x8B, 0x4C, 0x24, 0x10, 0x8B, 0x49, 0x04, 0x8B, 0x04, 0x41, 0x89, 0xC1, 0x33, 0x0F, 0x21, 0xF1, 0xD1, 0xE9, 0x50, 0x0B, 0x07, 0x29, 0xC8, 0x59, 0x31, 0xC1, 0x09, 0xC8, 0x21, 0xF1, 0xD1, 0xE9, 0x29, 0xC8, 0x66, 0x89, 0x07, 0x47, 0x47}

; Increase Ion Storm warning speech frequency
@SET 0x004ED5AA, {db 0x4E, 0x01}

; Decrease subterranean horizontal movement speed
@SET 0x006D8A9E, {db 0x29}

; "Overlay tiberium fix thing, 4th etc"
@SET 0x00644DF9, {mov dword [esi+0ACh], 0Ch}

;; Rules.ini key, WalkFrames= default value
@SET 0x0065B9E6, {mov byte [esi+4D0h], 1} ;byte ptr
@SET 0x0065BF3D, {mov [esi+21h], eax}

; Building selection box color change when affected by limpet from palette index yellow (5) to
; orange (6). Used with unit selection box (select.shp) color change for limpet affected frame.
@SET 0x0062B2E4, {mov dword [esp+1Ch], 0x06}
@SET 0x0062C0C1, {mov edi, 0x06}

; Erase HMEC hardcoding
@SET 0x00706A8C, {db 0,0,0,0}

; Erase NAWALL and GAWALL hardcoding
@SET 0x00710DA4, {db 0,0,0,0,0,0}
@SET 0x00710DAC, {db 0,0,0,0,0,0}

; Erase GAFSDF, 155mm and ARTYHE hardcoding
@SET 0x00710DB4, {db 0,0,0,0,0,0}
@SET 0x00715E78, {db 0,0,0,0,0}
@SET 0x00714C70, {db 0,0,0,0,0,0}

sstring str_BriefingPCX, "BRIEFING.PCX"

; String references
@SET 0x005C04AF, {mov ecx, str_BriefingPCX}


;
; The following patches will not be included in Vinifera compatible builds.
;
%ifndef VINIFERA

sstring src_RubiconLong, "Tiberian Sun: Rubicon"
sstring str_LanguageDLLNotFound, "Language.dll not found, please start Rubicon.exe and click Save in the Options menu."

; String references
@SET 0x00472567, push src_RubiconLong
@SET 0x0047256C, push str_LanguageDLLNotFound
@SET 0x005FF2C0, {cmp edx, src_RubiconLong}
@SET 0x005FF2C8, push src_RubiconLong
@SET 0x005FF2D9, push src_RubiconLong
@SET 0x005FF3AA, {cmp ecx, src_RubiconLong}
@SET 0x005FF3B2, push src_RubiconLong
@SET 0x005FF3C3, push src_RubiconLong
@SET 0x005FF4EC, push src_RubiconLong
@SET 0x006861ED, {mov dword [esp+48h], src_RubiconLong}
@SET 0x00686215, push src_RubiconLong
@SET 0x0068621A, push src_RubiconLong
@SET 0x006862BD, push src_RubiconLong
@SET 0x006862C2, push src_RubiconLong

; Remove framework mode mmt/mms loading
@LJMP 0x004F5182, 0x004F528C    ; jmp loc_4F528C

;; IsScoreShuffle on by default
@SET 0x005899F1, {mov byte [eax+35h], 1} ;byte ptr
@SET 0x005899F5, nop
@SET 0x005899F6, nop
@SET 0x005899F7, nop

; Set global variable byte containing side ID to load files for
@SET 0x004E2CFA, {mov byte [0x7E2500], al}
@SET 0x004E2CFF, nop
@SET 0x004E2D00, {add esp, 4}
@SJMP 0x004E2D03, 0x004E2D13 ; jmp short
@SET 0x004E2D05, nop

; Load sidebar MIX files for new sides properly (for saved games)
@SET 0x005D6C4F, {mov cl, [eax+1D91h]}
@CLEAR 0x005D6C55, 0x90, 0x005D6C58

; Load sidebar MIX files for new sides properly
@SET 0x005DD798, {mov cl, byte [0x007E2500]}
@CLEAR 0x005DD79E, 0x90, 0x005DD7A2

; Load speech MIX files for new sides properly (for saved games)
@SET 0x005D6DCE, {xor ecx, ecx}
@SET 0x005D6DD0, {mov cl, [eax+1D91h]}
@CLEAR 0x005D6DD6, 0x90, 0x005D6DDB

; Load speech MIX files for new sides properly
; Defaults SpeechSide to our hijacked player side value
hack 0x005DD75B
    mov  eax, [Scen]
    xor  ecx, ecx
    mov  cl, byte [0x007E2500] ; PlayerSide (was Session.IsGDI)
    mov  [eax+0x1E44], ecx ; set SpeechSide
    jmp  0x005DD784        ; go back to game code for initializing side

%endif
