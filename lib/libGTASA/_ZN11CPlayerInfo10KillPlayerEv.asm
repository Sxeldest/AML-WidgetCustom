; =========================================================
; Game Engine Function: _ZN11CPlayerInfo10KillPlayerEv
; Address            : 0x40BEAC - 0x40BEEE
; =========================================================

40BEAC:  LDRB.W          R1, [R0,#0xDC]
40BEB0:  CMP             R1, #0
40BEB2:  IT NE
40BEB4:  BXNE            LR
40BEB6:  PUSH            {R7,LR}
40BEB8:  MOV             R7, SP
40BEBA:  MOVS            R1, #1
40BEBC:  STRB.W          R1, [R0,#0xDC]
40BEC0:  BLX             j__ZN7CDarkel18ResetOnPlayerDeathEv; CDarkel::ResetOnPlayerDeath(void)
40BEC4:  LDR             R0, =(TheText_ptr - 0x40BECC)
40BEC6:  ADR             R1, aDead; "DEAD"
40BEC8:  ADD             R0, PC; TheText_ptr
40BECA:  LDR             R0, [R0]; TheText ; this
40BECC:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
40BED0:  MOV.W           R1, #(elf_hash_bucket+0xEA4); unsigned __int16 *
40BED4:  MOVS            R2, #2; unsigned int
40BED6:  BLX             j__ZN9CMessages13AddBigMessageEPtjt; CMessages::AddBigMessage(ushort *,uint,ushort)
40BEDA:  MOVS            R0, #(dword_84+3); this
40BEDC:  MOV.W           R1, #0x3F800000; unsigned __int16
40BEE0:  BLX             j__ZN6CStats13IncrementStatEtf; CStats::IncrementStat(ushort,float)
40BEE4:  MOVS            R0, #0; this
40BEE6:  POP.W           {R7,LR}
40BEEA:  B.W             sub_199168
