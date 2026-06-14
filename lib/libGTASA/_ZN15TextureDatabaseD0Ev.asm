; =========================================================
; Game Engine Function: _ZN15TextureDatabaseD0Ev
; Address            : 0x1E7A50 - 0x1E7A60
; =========================================================

1E7A50:  PUSH            {R7,LR}
1E7A52:  MOV             R7, SP
1E7A54:  BLX             j__ZN15TextureDatabaseD2Ev; TextureDatabase::~TextureDatabase()
1E7A58:  POP.W           {R7,LR}
1E7A5C:  B.W             j__ZdlPv; operator delete(void *)
