; =========================================================
; Game Engine Function: sub_24829C
; Address            : 0x24829C - 0x24835C
; =========================================================

24829C:  PUSH            {R4,R6,R7,LR}
24829E:  ADD             R7, SP, #8
2482A0:  LDR             R0, =(off_677664 - 0x2482A8)
2482A2:  LDR             R1, =(LogFile_ptr - 0x2482AA)
2482A4:  ADD             R0, PC; off_677664
2482A6:  ADD             R1, PC; LogFile_ptr
2482A8:  LDR             R0, [R0]
2482AA:  LDR             R1, [R1]; LogFile
2482AC:  LDR             R0, [R0]
2482AE:  STR             R0, [R1]
2482B0:  ADR             R0, aAlsoftHalfAngl; "__ALSOFT_HALF_ANGLE_CONES"
2482B2:  BLX             getenv
2482B6:  MOV             R4, R0
2482B8:  CBZ             R4, loc_2482EA
2482BA:  LDR             R1, =(aTrue_0 - 0x2482C2); "true"
2482BC:  MOV             R0, R4; char *
2482BE:  ADD             R1, PC; "true"
2482C0:  BLX             strcasecmp
2482C4:  CBZ             R0, loc_2482D4
2482C6:  MOV             R0, R4; char *
2482C8:  MOVS            R1, #0; char **
2482CA:  MOVS            R2, #0; int
2482CC:  BLX             strtol
2482D0:  CMP             R0, #1
2482D2:  BNE             loc_2482EA
2482D4:  LDR             R0, =(ConeScale_ptr - 0x2482DE)
2482D6:  VMOV.F32        S0, #0.5
2482DA:  ADD             R0, PC; ConeScale_ptr
2482DC:  LDR             R0, [R0]; ConeScale
2482DE:  VLDR            S2, [R0]
2482E2:  VMUL.F32        S0, S2, S0
2482E6:  VSTR            S0, [R0]
2482EA:  ADR             R0, aAlsoftReverseZ; "__ALSOFT_REVERSE_Z"
2482EC:  BLX             getenv
2482F0:  MOV             R4, R0
2482F2:  CBZ             R4, loc_248320
2482F4:  LDR             R1, =(aTrue_0 - 0x2482FC); "true"
2482F6:  MOV             R0, R4; char *
2482F8:  ADD             R1, PC; "true"
2482FA:  BLX             strcasecmp
2482FE:  CBZ             R0, loc_24830E
248300:  MOV             R0, R4; char *
248302:  MOVS            R1, #0; char **
248304:  MOVS            R2, #0; int
248306:  BLX             strtol
24830A:  CMP             R0, #1
24830C:  BNE             loc_248320
24830E:  LDR             R0, =(ZScale_ptr - 0x248314)
248310:  ADD             R0, PC; ZScale_ptr
248312:  LDR             R0, [R0]; ZScale
248314:  VLDR            S0, [R0]
248318:  VNEG.F32        S0, S0
24831C:  VSTR            S0, [R0]
248320:  LDR             R0, =(dword_6D6290 - 0x248328)
248322:  LDR             R1, =(sub_2483BC+1 - 0x24832A)
248324:  ADD             R0, PC; dword_6D6290 ; key
248326:  ADD             R1, PC; sub_2483BC ; destr_function
248328:  BLX             pthread_key_create
24832C:  LDR             R0, =(unk_6D6294 - 0x248332)
24832E:  ADD             R0, PC; unk_6D6294
248330:  BLX             j_InitializeCriticalSection
248334:  LDR             R0, =(dword_6D681C - 0x248340)
248336:  MOVS            R2, #0
248338:  LDR             R1, =(dword_6D6830 - 0x248342)
24833A:  MOVS            R3, #1
24833C:  ADD             R0, PC; dword_6D681C
24833E:  ADD             R1, PC; dword_6D6830
248340:  STR             R2, [R0]
248342:  STR             R2, [R0,#(dword_6D6820 - 0x6D681C)]
248344:  STR             R2, [R0,#(dword_6D6824 - 0x6D681C)]
248346:  STR             R2, [R0,#(dword_6D6828 - 0x6D681C)]
248348:  STR             R3, [R1]
24834A:  MOVS            R1, #4; item_size
24834C:  STR             R2, [R0,#(dword_6D682C - 0x6D681C)]
24834E:  MOVS            R0, #1; item_count
248350:  BLX             calloc
248354:  LDR             R1, =(dword_6D6834 - 0x24835A)
248356:  ADD             R1, PC; dword_6D6834
248358:  STR             R0, [R1]
24835A:  POP             {R4,R6,R7,PC}
