; =========================================================
; Game Engine Function: _ZN23TextureListingContainerD2Ev
; Address            : 0x1E78E0 - 0x1E78FC
; =========================================================

1E78E0:  PUSH            {R4,R6,R7,LR}; Alternative name is 'TextureListingContainer::~TextureListingContainer()'
1E78E2:  ADD             R7, SP, #8
1E78E4:  MOV             R4, R0
1E78E6:  LDRB            R0, [R4,#0x10]
1E78E8:  CMP             R0, #0
1E78EA:  ITT NE
1E78EC:  LDRNE           R0, [R4,#8]; p
1E78EE:  BLXNE           free
1E78F2:  MOVS            R0, #0
1E78F4:  STR             R0, [R4,#0xC]
1E78F6:  STR             R0, [R4,#8]
1E78F8:  MOV             R0, R4
1E78FA:  POP             {R4,R6,R7,PC}
