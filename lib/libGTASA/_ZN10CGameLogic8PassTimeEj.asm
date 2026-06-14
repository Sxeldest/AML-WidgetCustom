; =========================================================
; Game Engine Function: _ZN10CGameLogic8PassTimeEj
; Address            : 0x3078E0 - 0x307982
; =========================================================

3078E0:  PUSH            {R4-R7,LR}
3078E2:  ADD             R7, SP, #0xC
3078E4:  PUSH.W          {R8}
3078E8:  MOV             R8, R0
3078EA:  LDR             R0, =(_ZN6CClock20ms_nGameClockMinutesE_ptr - 0x3078F4)
3078EC:  LDR             R1, =(_ZN6CClock10CurrentDayE_ptr - 0x3078F6)
3078EE:  LDR             R2, =(_ZN6CClock18ms_nGameClockHoursE_ptr - 0x3078F8)
3078F0:  ADD             R0, PC; _ZN6CClock20ms_nGameClockMinutesE_ptr
3078F2:  ADD             R1, PC; _ZN6CClock10CurrentDayE_ptr
3078F4:  ADD             R2, PC; _ZN6CClock18ms_nGameClockHoursE_ptr
3078F6:  LDR             R0, [R0]; CClock::ms_nGameClockMinutes ...
3078F8:  LDR             R1, [R1]; CClock::CurrentDay ...
3078FA:  LDR             R2, [R2]; float
3078FC:  LDRB            R0, [R0]; CClock::ms_nGameClockMinutes
3078FE:  LDRB            R4, [R1]; CClock::CurrentDay
307900:  LDRB            R6, [R2]; CClock::ms_nGameClockHours
307902:  ADD.W           R5, R0, R8
307906:  CMP             R5, #0x3C ; '<'
307908:  BLT             loc_30793C
30790A:  MVNS            R1, R5
30790C:  CMN.W           R1, #0x78 ; 'x'
307910:  IT LE
307912:  MOVLE           R1, #0xFFFFFF88
307916:  ADD             R1, R8
307918:  ADD             R0, R1
30791A:  MOVW            R1, #0x8889
30791E:  ADDS            R0, #0x3C ; '<'
307920:  MOVT            R1, #0x8888
307924:  UMULL.W         R0, R1, R0, R1
307928:  ADD.W           R0, R6, R1,LSR#5
30792C:  ADDS            R6, R0, #1
30792E:  LSRS            R0, R1, #5
307930:  SUB.W           R0, R0, R0,LSL#4
307934:  ADD.W           R0, R5, R0,LSL#2
307938:  SUB.W           R5, R0, #0x3C ; '<'
30793C:  CMP             R6, #0x18
30793E:  BLT             loc_307960
307940:  MOVS            R0, #(dword_84+2); this
307942:  MOV.W           R1, #0x3F800000; unsigned __int16
307946:  BLX             j__ZN6CStats13IncrementStatEtf; CStats::IncrementStat(ushort,float)
30794A:  ADDS            R2, R4, #1
30794C:  CMP             R4, #6
30794E:  SUB.W           R0, R6, #0x18
307952:  IT GT
307954:  MOVGT           R2, #1
307956:  CMP             R6, #0x2F ; '/'
307958:  MOV             R4, R2
30795A:  MOV             R6, R0
30795C:  BGT             loc_307940
30795E:  B               loc_307964
307960:  MOV             R0, R6
307962:  MOV             R2, R4
307964:  UXTB            R0, R0; this
307966:  UXTB            R1, R5; unsigned __int8
307968:  UXTB            R2, R2; unsigned __int8
30796A:  BLX             j__ZN6CClock12SetGameClockEhhh; CClock::SetGameClock(uchar,uchar,uchar)
30796E:  MOV.W           R0, #0x3E8
307972:  MUL.W           R0, R8, R0; this
307976:  POP.W           {R8}
30797A:  POP.W           {R4-R7,LR}
30797E:  B.W             j_j__ZN8CPickups8PassTimeEj; j_CPickups::PassTime(uint)
