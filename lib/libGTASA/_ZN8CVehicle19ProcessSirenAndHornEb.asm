; =========================================================
; Game Engine Function: _ZN8CVehicle19ProcessSirenAndHornEb
; Address            : 0x5900B8 - 0x5901B0
; =========================================================

5900B8:  PUSH            {R4,R5,R7,LR}
5900BA:  ADD             R7, SP, #8
5900BC:  VPUSH           {D8}
5900C0:  MOV             R4, R0
5900C2:  MOVW            R2, #0x20A
5900C6:  LDRSH.W         R0, [R4,#0x26]
5900CA:  CMP             R0, R2
5900CC:  BGT             loc_5900F0
5900CE:  SUBW            R2, R0, #0x197
5900D2:  CMP             R2, #0x1A
5900D4:  BHI             loc_5900E8
5900D6:  MOVS            R3, #1
5900D8:  LSL.W           R2, R3, R2
5900DC:  MOV             R3, #0x4910201
5900E4:  TST             R2, R3
5900E6:  BNE             loc_59010A
5900E8:  CMP.W           R0, #0x1EA
5900EC:  BEQ             loc_59010A
5900EE:  B               loc_59017A
5900F0:  SUB.W           R2, R0, #0x254
5900F4:  CMP             R2, #5
5900F6:  BHI             loc_5900FC
5900F8:  CMP             R2, #4
5900FA:  BNE             loc_59010A
5900FC:  CMP.W           R0, #0x210
590100:  ITT NE
590102:  MOVWNE          R2, #0x20B
590106:  CMPNE           R0, R2
590108:  BNE             loc_59017A
59010A:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x590116)
59010C:  MOVS            R1, #0
59010E:  STR.W           R1, [R4,#0x524]
590112:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
590114:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
590116:  LDR             R5, [R0,#(dword_6F37B0 - 0x6F3794)]
590118:  CMP             R5, #0
59011A:  BEQ             loc_5901AA
59011C:  VLDR            S16, =0.2
590120:  VLDR            S0, [R5,#0x44]
590124:  VCMPE.F32       S0, S16
590128:  VMRS            APSR_nzcv, FPSCR
59012C:  BLE             loc_590140
59012E:  LDRB.W          R0, [R4,#0x431]
590132:  MOVS            R1, #0
590134:  CMP.W           R1, R0,LSR#7
590138:  ITT EQ
59013A:  MOVEQ           R0, #1
59013C:  STREQ.W         R0, [R4,#0x524]
590140:  LDR             R0, =(Pads_ptr - 0x590146)
590142:  ADD             R0, PC; Pads_ptr
590144:  LDR             R0, [R0]; Pads ; this
590146:  BLX             j__ZN4CPad12HornJustDownEv; CPad::HornJustDown(void)
59014A:  CMP             R0, #1
59014C:  BNE             loc_5901AA
59014E:  VLDR            S0, [R5,#0x44]
590152:  ADDW            R1, R4, #0x42C
590156:  LDR.W           R2, [R4,#0x430]
59015A:  VCMPE.F32       S0, S16
59015E:  LDR.W           R0, [R4,#0x42C]
590162:  VMRS            APSR_nzcv, FPSCR
590166:  ITE GT
590168:  BICGT.W         R2, R2, #0x8000
59016C:  EORLE.W         R2, R2, #0x8000
590170:  STRD.W          R0, R2, [R1]
590174:  VPOP            {D8}
590178:  POP             {R4,R5,R7,PC}
59017A:  CMP             R1, #1
59017C:  BNE             loc_5901AA
59017E:  LDRH.W          R0, [R4,#0x460]
590182:  CMP             R0, #0
590184:  ITT NE
590186:  MOVWNE          R1, #0xFFFF
59018A:  CMPNE           R0, R1
59018C:  BEQ             loc_59019A
59018E:  LDRB.W          R0, [R4,#0x3A]
590192:  AND.W           R0, R0, #0xF8
590196:  CMP             R0, #0x28 ; '('
590198:  BNE             loc_5901AA
59019A:  LDR             R0, =(Pads_ptr - 0x5901A2)
59019C:  MOVS            R1, #1; bool
59019E:  ADD             R0, PC; Pads_ptr
5901A0:  LDR             R0, [R0]; Pads ; this
5901A2:  BLX             j__ZN4CPad7GetHornEb; CPad::GetHorn(bool)
5901A6:  STR.W           R0, [R4,#0x524]
5901AA:  VPOP            {D8}
5901AE:  POP             {R4,R5,R7,PC}
