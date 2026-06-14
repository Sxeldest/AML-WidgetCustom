; =========================================================
; Game Engine Function: _ZN10MenuScreenD2Ev
; Address            : 0x297770 - 0x297790
; =========================================================

297770:  PUSH            {R4,R6,R7,LR}; Alternative name is 'MenuScreen::~MenuScreen()'
297772:  ADD             R7, SP, #8
297774:  MOV             R4, R0
297776:  LDR             R0, =(_ZTV10MenuScreen_ptr - 0x29777C)
297778:  ADD             R0, PC; _ZTV10MenuScreen_ptr
29777A:  LDR             R1, [R0]; `vtable for'MenuScreen ...
29777C:  LDR             R0, [R4,#4]
29777E:  ADDS            R1, #8
297780:  STR             R1, [R4]
297782:  CBZ             R0, loc_29778C
297784:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
297788:  MOVS            R0, #0
29778A:  STR             R0, [R4,#4]
29778C:  MOV             R0, R4
29778E:  POP             {R4,R6,R7,PC}
