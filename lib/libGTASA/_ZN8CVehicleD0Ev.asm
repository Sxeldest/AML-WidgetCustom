; =========================================================
; Game Engine Function: _ZN8CVehicleD0Ev
; Address            : 0x581C48 - 0x581C7C
; =========================================================

581C48:  PUSH            {R7,LR}
581C4A:  MOV             R7, SP
581C4C:  BLX             j__ZN8CVehicleD2Ev; CVehicle::~CVehicle()
581C50:  LDR             R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x581C56)
581C52:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
581C54:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
581C56:  LDR             R1, [R1]; CPools::ms_pVehiclePool
581C58:  LDRD.W          R2, R3, [R1]
581C5C:  SUBS            R0, R0, R2
581C5E:  MOV             R2, #0xBFE6D523
581C66:  ASRS            R0, R0, #2
581C68:  MULS            R0, R2
581C6A:  LDRB            R2, [R3,R0]
581C6C:  ORR.W           R2, R2, #0x80
581C70:  STRB            R2, [R3,R0]
581C72:  LDR             R2, [R1,#0xC]
581C74:  CMP             R0, R2
581C76:  IT LT
581C78:  STRLT           R0, [R1,#0xC]
581C7A:  POP             {R7,PC}
