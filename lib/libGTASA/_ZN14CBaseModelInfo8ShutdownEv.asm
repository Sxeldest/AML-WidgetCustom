; =========================================================
; Game Engine Function: _ZN14CBaseModelInfo8ShutdownEv
; Address            : 0x384FCC - 0x38500A
; =========================================================

384FCC:  PUSH            {R4,R6,R7,LR}
384FCE:  ADD             R7, SP, #8
384FD0:  MOV             R4, R0
384FD2:  LDR             R0, [R4]
384FD4:  LDR             R1, [R0,#0x24]
384FD6:  MOV             R0, R4
384FD8:  BLX             R1
384FDA:  LDR             R0, [R4,#0x2C]; this
384FDC:  CBZ             R0, loc_384FEE
384FDE:  LDRB.W          R1, [R4,#0x28]
384FE2:  LSLS            R1, R1, #0x18
384FE4:  BPL             loc_384FEE
384FE6:  BLX             j__ZN9CColModelD2Ev; CColModel::~CColModel()
384FEA:  BLX             j__ZN9CColModeldlEPv; CColModel::operator delete(void *)
384FEE:  MOVS            R0, #0
384FF0:  MOVW            R2, #0xFFFF
384FF4:  STR             R0, [R4,#0x2C]
384FF6:  LDRH            R1, [R4,#0x28]
384FF8:  STRH            R2, [R4,#0x24]
384FFA:  STRB.W          R0, [R4,#0x23]
384FFE:  ORR.W           R0, R1, #0x80
385002:  STRH            R2, [R4,#0x26]
385004:  STRH            R2, [R4,#0x20]
385006:  STRH            R0, [R4,#0x28]
385008:  POP             {R4,R6,R7,PC}
