; =========================================================
; Game Engine Function: _ZN10MenuScreenC2Eb
; Address            : 0x29773C - 0x297768
; =========================================================

29773C:  PUSH            {R4,R6,R7,LR}
29773E:  ADD             R7, SP, #8
297740:  LDR             R2, =(_ZTV10MenuScreen_ptr - 0x29774A)
297742:  MOV             R4, R0
297744:  LDR             R0, =(aMenuSelector - 0x29774E); "menu_selector"
297746:  ADD             R2, PC; _ZTV10MenuScreen_ptr
297748:  STRB            R1, [R4,#0xC]
29774A:  ADD             R0, PC; "menu_selector"
29774C:  LDR             R2, [R2]; `vtable for'MenuScreen ...
29774E:  ADD.W           R1, R2, #8; char *
297752:  STR             R1, [R4]
297754:  BLX             j__ZN22TextureDatabaseRuntime10GetTextureEPKc; TextureDatabaseRuntime::GetTexture(char const*)
297758:  LDR             R1, [R0,#0x54]
29775A:  ADDS            R1, #1
29775C:  STR             R1, [R0,#0x54]
29775E:  MOVS            R1, #0
297760:  STRD.W          R0, R1, [R4,#4]
297764:  MOV             R0, R4
297766:  POP             {R4,R6,R7,PC}
