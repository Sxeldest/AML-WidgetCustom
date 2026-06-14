; =========================================================
; Game Engine Function: _Z10GetTexturePKc
; Address            : 0x297210 - 0x297220
; =========================================================

297210:  PUSH            {R7,LR}
297212:  MOV             R7, SP
297214:  BLX             j__ZN22TextureDatabaseRuntime10GetTextureEPKc; TextureDatabaseRuntime::GetTexture(char const*)
297218:  LDR             R1, [R0,#0x54]
29721A:  ADDS            R1, #1
29721C:  STR             R1, [R0,#0x54]
29721E:  POP             {R7,PC}
