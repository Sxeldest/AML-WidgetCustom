; =========================================================
; Game Engine Function: _ZN14CRunningScript23ProcessCommands500To599Ei
; Address            : 0x3439D8 - 0x344798
; =========================================================

3439D8:  PUSH            {R4-R7,LR}
3439DA:  ADD             R7, SP, #0xC
3439DC:  PUSH.W          {R8}
3439E0:  VPUSH           {D8-D10}
3439E4:  SUB             SP, SP, #0x78; int
3439E6:  MOV             R4, R0
3439E8:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x3439F0)
3439EC:  ADD             R0, PC; __stack_chk_guard_ptr
3439EE:  LDR             R0, [R0]; __stack_chk_guard
3439F0:  LDR             R0, [R0]
3439F2:  STR             R0, [SP,#0xA0+var_2C]
3439F4:  SUB.W           R0, R1, #0x1F4; switch 99 cases
3439F8:  CMP             R0, #0x62 ; 'b'
3439FA:  BHI.W           def_343A00; jumptable 00343A00 default case, cases 504,508-513,526-530,536-538,541-544,546,549,552,556-560,562-564,568-570,574-576,579,582,586-590,593,594,597
3439FE:  MOVS            R6, #0
343A00:  TBH.W           [PC,R0,LSL#1]; switch jump
343A04:  DCW 0x68; jump table for switch statement
343A06:  DCW 0x8B
343A08:  DCW 0xAF
343A0A:  DCW 0xB3
343A0C:  DCW 0xD6
343A0E:  DCW 0xD9
343A10:  DCW 0xF4
343A12:  DCW 0xFB
343A14:  DCW 0xD6
343A16:  DCW 0xD6
343A18:  DCW 0xD6
343A1A:  DCW 0xD6
343A1C:  DCW 0xD6
343A1E:  DCW 0xD6
343A20:  DCW 0x63
343A22:  DCW 0x63
343A24:  DCW 0x63
343A26:  DCW 0x63
343A28:  DCW 0x63
343A2A:  DCW 0x63
343A2C:  DCW 0x108
343A2E:  DCW 0x127
343A30:  DCW 0x14B
343A32:  DCW 0x175
343A34:  DCW 0x194
343A36:  DCW 0x1B0
343A38:  DCW 0xD6
343A3A:  DCW 0xD6
343A3C:  DCW 0xD6
343A3E:  DCW 0xD6
343A40:  DCW 0xD6
343A42:  DCW 0x1D0
343A44:  DCW 0x226
343A46:  DCW 0x233
343A48:  DCW 0x240
343A4A:  DCW 0x266
343A4C:  DCW 0xD6
343A4E:  DCW 0xD6
343A50:  DCW 0xD6
343A52:  DCW 0x288
343A54:  DCW 0x6B9
343A56:  DCW 0xD6
343A58:  DCW 0xD6
343A5A:  DCW 0xD6
343A5C:  DCW 0xD6
343A5E:  DCW 0x2B5
343A60:  DCW 0xD6
343A62:  DCW 0x2C7
343A64:  DCW 0x2E5
343A66:  DCW 0xD6
343A68:  DCW 0x300
343A6A:  DCW 0x317
343A6C:  DCW 0xD6
343A6E:  DCW 0x338
343A70:  DCW 0x354
343A72:  DCW 0x37D
343A74:  DCW 0xD6
343A76:  DCW 0xD6
343A78:  DCW 0xD6
343A7A:  DCW 0xD6
343A7C:  DCW 0xD6
343A7E:  DCW 0x6B9
343A80:  DCW 0xD6
343A82:  DCW 0xD6
343A84:  DCW 0xD6
343A86:  DCW 0x3B4
343A88:  DCW 0x3B7
343A8A:  DCW 0x3BC
343A8C:  DCW 0xD6
343A8E:  DCW 0xD6
343A90:  DCW 0xD6
343A92:  DCW 0x3CB
343A94:  DCW 0x3E9
343A96:  DCW 0x459
343A98:  DCW 0xD6
343A9A:  DCW 0xD6
343A9C:  DCW 0xD6
343A9E:  DCW 0x467
343AA0:  DCW 0x47B
343AA2:  DCW 0xD6
343AA4:  DCW 0x4A0
343AA6:  DCW 0x4B4
343AA8:  DCW 0xD6
343AAA:  DCW 0x4D2
343AAC:  DCW 0x4F6
343AAE:  DCW 0x519
343AB0:  DCW 0xD6
343AB2:  DCW 0xD6
343AB4:  DCW 0xD6
343AB6:  DCW 0xD6
343AB8:  DCW 0xD6
343ABA:  DCW 0x53C
343ABC:  DCW 0x6B9
343ABE:  DCW 0xD6
343AC0:  DCW 0xD6
343AC2:  DCW 0x5A3
343AC4:  DCW 0x5A6
343AC6:  DCW 0xD6
343AC8:  DCW 0x5A9; int
343ACA:  MOV             R0, R4; jumptable 00343A00 cases 514-519
343ACC:  BLX             j__ZN14CRunningScript20LocateCharCarCommandEi; CRunningScript::LocateCharCarCommand(int)
343AD0:  B.W             loc_344774
343AD4:  MOV             R0, R4; jumptable 00343A00 case 500
343AD6:  MOVS            R1, #1; __int16
343AD8:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
343ADC:  LDR.W           R0, =(ScriptParams_ptr - 0x343AEE)
343AE0:  MOVW            R2, #0xA2C
343AE4:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x343AF4)
343AE8:  MOVS            R6, #0
343AEA:  ADD             R0, PC; ScriptParams_ptr
343AEC:  VLDR            S0, =0.3
343AF0:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
343AF2:  LDR             R0, [R0]; ScriptParams
343AF4:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
343AF6:  LDR             R0, [R0]
343AF8:  LDR             R1, [R1]; CPools::ms_pVehiclePool
343AFA:  LSRS            R0, R0, #8
343AFC:  LDR             R1, [R1]
343AFE:  MLA.W           R0, R0, R2, R1
343B02:  MOVS            R1, #0
343B04:  LDR             R0, [R0,#0x14]
343B06:  VLDR            S2, [R0,#0x28]
343B0A:  VCMPE.F32       S2, S0
343B0E:  VMRS            APSR_nzcv, FPSCR
343B12:  IT LE
343B14:  MOVLE           R1, #1
343B16:  B.W             loc_344582
343B1A:  MOV             R0, R4; jumptable 00343A00 case 501
343B1C:  MOVS            R1, #1; __int16
343B1E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
343B22:  LDR.W           R0, =(ScriptParams_ptr - 0x343B32)
343B26:  MOV.W           R6, #0x194
343B2A:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x343B38)
343B2E:  ADD             R0, PC; ScriptParams_ptr
343B30:  LDR.W           R3, =(_ZN6CWorld7PlayersE_ptr - 0x343B3C)
343B34:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
343B36:  LDR             R0, [R0]; ScriptParams
343B38:  ADD             R3, PC; _ZN6CWorld7PlayersE_ptr
343B3A:  LDR             R1, [R1]; CPools::ms_pPedPool ...
343B3C:  LDR             R3, [R3]; CWorld::Players ...
343B3E:  LDR             R2, [R0]
343B40:  LDR             R1, [R1]; CPools::ms_pPedPool
343B42:  MULS            R2, R6
343B44:  LDRD.W          R6, R1, [R1]
343B48:  LDR             R2, [R3,R2]
343B4A:  MOV             R3, #0xBED87F3B
343B52:  SUBS            R2, R2, R6
343B54:  ASRS            R2, R2, #2
343B56:  MULS            R2, R3
343B58:  LDRB            R1, [R1,R2]
343B5A:  ORR.W           R1, R1, R2,LSL#8
343B5E:  STR             R1, [R0]
343B60:  B               loc_34406A
343B62:  BLX             j__ZN8CRestart21CancelOverrideRestartEv; jumptable 00343A00 case 502
343B66:  B.W             loc_344774
343B6A:  MOV             R0, R4; jumptable 00343A00 case 503
343B6C:  MOVS            R1, #2; __int16
343B6E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
343B72:  LDR.W           R0, =(ScriptParams_ptr - 0x343B82)
343B76:  MOV.W           R3, #0x194
343B7A:  LDR.W           R2, =(_ZN6CWorld7PlayersE_ptr - 0x343B84)
343B7E:  ADD             R0, PC; ScriptParams_ptr
343B80:  ADD             R2, PC; _ZN6CWorld7PlayersE_ptr
343B82:  LDR             R0, [R0]; ScriptParams
343B84:  LDR             R2, [R2]; CWorld::Players ...
343B86:  LDRD.W          R1, R0, [R0]
343B8A:  MULS            R1, R3
343B8C:  LDR             R1, [R2,R1]
343B8E:  LDR.W           R1, [R1,#0x444]
343B92:  CMP             R1, #0
343B94:  ITE NE
343B96:  LDRNE           R1, [R1]
343B98:  MOVEQ           R1, #0
343B9A:  CMP             R0, #0
343B9C:  LDRB            R2, [R1,#(dword_1C+2)]
343B9E:  BEQ.W           loc_34468E
343BA2:  ORR.W           R0, R2, #1; this
343BA6:  STRB            R0, [R1,#(dword_1C+2)]
343BA8:  BLX             j__ZN6CWorld32StopAllLawEnforcersInTheirTracksEv; CWorld::StopAllLawEnforcersInTheirTracks(void)
343BAC:  B.W             loc_344774
343BB0:  MOVS            R6, #0xFF; jumptable 00343A00 default case, cases 504,508-513,526-530,536-538,541-544,546,549,552,556-560,562-564,568-570,574-576,579,582,586-590,593,594,597
343BB2:  B.W             loc_344776; jumptable 00343A00 cases 540,561,592
343BB6:  SUB.W           R5, R7, #-var_36; jumptable 00343A00 case 505
343BBA:  MOV             R0, R4; this
343BBC:  MOVS            R2, #8; unsigned __int8
343BBE:  MOV             R1, R5; char *
343BC0:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
343BC4:  ADR.W           R1, aDummy_3; "DUMMY"
343BC8:  MOV             R0, R5; char *
343BCA:  BLX             strcasecmp
343BCE:  MOVS            R6, #0
343BD0:  CMP             R0, #0
343BD2:  BEQ.W           loc_344696
343BD6:  LDR.W           R0, =(TheText_ptr - 0x343BE2)
343BDA:  SUB.W           R1, R7, #-var_36; CKeyGen *
343BDE:  ADD             R0, PC; TheText_ptr
343BE0:  LDR             R0, [R0]; TheText ; this
343BE2:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
343BE6:  MOV             R8, R0
343BE8:  B.W             loc_34469A
343BEC:  LDR.W           R0, =(ScriptParams_ptr - 0x343BF4); jumptable 00343A00 case 506
343BF0:  ADD             R0, PC; ScriptParams_ptr ; this
343BF2:  LDR             R5, [R0]; ScriptParams
343BF4:  BLX             j__ZN7CDarkel10ReadStatusEv; CDarkel::ReadStatus(void)
343BF8:  B               loc_343C96
343BFA:  MOV             R0, R4; jumptable 00343A00 case 507
343BFC:  MOVS            R1, #1; __int16
343BFE:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
343C02:  LDR.W           R0, =(ScriptParams_ptr - 0x343C0A)
343C06:  ADD             R0, PC; ScriptParams_ptr
343C08:  LDR             R0, [R0]; ScriptParams
343C0A:  VLDR            S0, [R0]
343C0E:  VSQRT.F32       S0, S0
343C12:  B               loc_344066
343C14:  MOV             R0, R4; jumptable 00343A00 case 520
343C16:  MOVS            R1, #2; __int16
343C18:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
343C1C:  LDR.W           R0, =(ScriptParams_ptr - 0x343C24)
343C20:  ADD             R0, PC; ScriptParams_ptr
343C22:  LDR             R5, [R0]; ScriptParams
343C24:  VLDR            S16, [R5]
343C28:  VLDR            S18, [R5,#4]
343C2C:  BLX             rand
343C30:  VMOV            S0, R0
343C34:  VLDR            S2, =4.6566e-10
343C38:  VSUB.F32        S4, S18, S16
343C3C:  VCVT.F32.S32    S0, S0
343C40:  VMUL.F32        S0, S0, S2
343C44:  VMUL.F32        S0, S4, S0
343C48:  VADD.F32        S0, S16, S0
343C4C:  VSTR            S0, [R5]
343C50:  B               loc_34406A
343C52:  MOV             R0, R4; jumptable 00343A00 case 521
343C54:  MOVS            R1, #2; __int16
343C56:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
343C5A:  LDR.W           R0, =(ScriptParams_ptr - 0x343C62)
343C5E:  ADD             R0, PC; ScriptParams_ptr
343C60:  LDR             R5, [R0]; ScriptParams
343C62:  LDRD.W          R6, R8, [R5]
343C66:  BLX             rand
343C6A:  UXTH            R0, R0
343C6C:  VLDR            S2, =0.000015259
343C70:  VMOV            S0, R0
343C74:  SUB.W           R0, R8, R6
343C78:  VCVT.F32.S32    S0, S0
343C7C:  VMOV            S4, R0
343C80:  VCVT.F32.S32    S4, S4
343C84:  VMUL.F32        S0, S0, S2
343C88:  VMUL.F32        S0, S0, S4
343C8C:  VCVT.S32.F32    S0, S0
343C90:  VMOV            R0, S0
343C94:  ADD             R0, R6
343C96:  STR             R0, [R5]
343C98:  B               loc_34406A
343C9A:  MOV             R0, R4; jumptable 00343A00 case 522
343C9C:  MOVS            R1, #2; __int16
343C9E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
343CA2:  LDR.W           R0, =(ScriptParams_ptr - 0x343CAA)
343CA6:  ADD             R0, PC; ScriptParams_ptr
343CA8:  LDR             R0, [R0]; ScriptParams
343CAA:  LDR             R1, [R0]
343CAC:  CMP             R1, #0
343CAE:  BLT.W           loc_344774
343CB2:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x343CBE)
343CB6:  UXTB            R3, R1
343CB8:  LSRS            R1, R1, #8
343CBA:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
343CBC:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
343CBE:  LDR             R0, [R0]; CPools::ms_pVehiclePool
343CC0:  LDR             R2, [R0,#4]
343CC2:  LDRB            R2, [R2,R1]
343CC4:  CMP             R2, R3
343CC6:  BNE.W           loc_344774
343CCA:  MOVW            R2, #0xA2C
343CCE:  LDR             R0, [R0]
343CD0:  MLA.W           R0, R1, R2, R0
343CD4:  CMP             R0, #0
343CD6:  BEQ.W           loc_344774
343CDA:  LDR.W           R1, =(ScriptParams_ptr - 0x343CE4)
343CDE:  MOVS            R6, #0
343CE0:  ADD             R1, PC; ScriptParams_ptr
343CE2:  LDR             R1, [R1]; ScriptParams
343CE4:  LDR             R1, [R1,#(dword_81A90C - 0x81A908)]
343CE6:  STR.W           R1, [R0,#0x508]
343CEA:  B.W             loc_344776; jumptable 00343A00 cases 540,561,592
343CEE:  MOV             R0, R4; jumptable 00343A00 case 523
343CF0:  MOVS            R1, #1; __int16
343CF2:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
343CF6:  LDR.W           R0, =(ScriptParams_ptr - 0x343D08)
343CFA:  MOVW            R2, #0xA2C
343CFE:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x343D0A)
343D02:  MOVS            R6, #0
343D04:  ADD             R0, PC; ScriptParams_ptr
343D06:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
343D08:  LDR             R0, [R0]; ScriptParams
343D0A:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
343D0C:  LDR             R0, [R0]
343D0E:  LDR             R1, [R1]; CPools::ms_pVehiclePool
343D10:  LSRS            R0, R0, #8
343D12:  MUL.W           R3, R0, R2
343D16:  LDR             R1, [R1]
343D18:  MLA.W           R0, R0, R2, R1
343D1C:  MOVS            R2, #0
343D1E:  LDR             R3, [R1,R3]
343D20:  MOVS            R1, #0
343D22:  LDR.W           R3, [R3,#0xA8]
343D26:  BLX             R3
343D28:  B.W             loc_344776; jumptable 00343A00 cases 540,561,592
343D2C:  MOV             R0, R4; jumptable 00343A00 case 524
343D2E:  MOVS            R1, #4; __int16
343D30:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
343D34:  LDR.W           R0, =(ScriptParams_ptr - 0x343D40)
343D38:  MOVS            R6, #0
343D3A:  MOVS            R4, #1
343D3C:  ADD             R0, PC; ScriptParams_ptr
343D3E:  LDR             R0, [R0]; ScriptParams
343D40:  LDRD.W          R3, R1, [R0]; int
343D44:  LDRD.W          R5, R2, [R0,#(dword_81A910 - 0x81A908)]; int
343D48:  MOVS            R0, #0xBF800000
343D4E:  STMEA.W         SP, {R1,R5,R6}
343D52:  MOVS            R1, #0; int
343D54:  STRD.W          R4, R0, [SP,#0xA0+var_94]; int
343D58:  MOVS            R0, #0; int
343D5A:  STR             R6, [SP,#0xA0+var_8C]; int
343D5C:  BLX             j__ZN10CExplosion12AddExplosionEP7CEntityS1_14eExplosionType7CVectorjhfh; CExplosion::AddExplosion(CEntity *,CEntity *,eExplosionType,CVector,uint,uchar,float,uchar)
343D60:  B.W             loc_344776; jumptable 00343A00 cases 540,561,592
343D64:  MOV             R0, R4; jumptable 00343A00 case 525
343D66:  MOVS            R1, #1; __int16
343D68:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
343D6C:  LDR.W           R0, =(ScriptParams_ptr - 0x343D7E)
343D70:  MOVW            R2, #0xA2C
343D74:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x343D80)
343D78:  MOVS            R6, #0
343D7A:  ADD             R0, PC; ScriptParams_ptr
343D7C:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
343D7E:  LDR             R0, [R0]; ScriptParams
343D80:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
343D82:  LDR             R0, [R0]
343D84:  LDR             R1, [R1]; CPools::ms_pVehiclePool
343D86:  LSRS            R0, R0, #8
343D88:  LDR             R1, [R1]
343D8A:  MLA.W           R0, R0, R2, R1
343D8E:  MOVS            R1, #0
343D90:  LDR             R0, [R0,#0x14]
343D92:  VLDR            S0, [R0,#0x28]
343D96:  VCMPE.F32       S0, #0.0
343D9A:  VMRS            APSR_nzcv, FPSCR
343D9E:  IT GE
343DA0:  MOVGE           R1, #1
343DA2:  B               loc_344582
343DA4:  MOV             R0, R4; jumptable 00343A00 case 531
343DA6:  MOVS            R1, #5; __int16
343DA8:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
343DAC:  LDR.W           R0, =(ScriptParams_ptr - 0x343DB4)
343DB0:  ADD             R0, PC; ScriptParams_ptr
343DB2:  LDR             R0, [R0]; ScriptParams
343DB4:  LDR.W           R8, [R0]
343DB8:  CMP.W           R8, #0xFFFFFFFF
343DBC:  BGT             loc_343DD6
343DBE:  LDR.W           R0, =(_ZN11CTheScripts15UsedObjectArrayE_ptr - 0x343DCA)
343DC2:  RSB.W           R1, R8, #0
343DC6:  ADD             R0, PC; _ZN11CTheScripts15UsedObjectArrayE_ptr
343DC8:  RSB.W           R1, R1, R1,LSL#3
343DCC:  LDR             R0, [R0]; CTheScripts::UsedObjectArray ...
343DCE:  ADD.W           R0, R0, R1,LSL#2
343DD2:  LDR.W           R8, [R0,#0x18]
343DD6:  LDR.W           R0, =(ScriptParams_ptr - 0x343DE2)
343DDA:  VLDR            S0, =-100.0
343DDE:  ADD             R0, PC; ScriptParams_ptr
343DE0:  LDR             R0, [R0]; ScriptParams
343DE2:  VLDR            S20, [R0,#0x10]
343DE6:  VLDR            S16, [R0,#8]
343DEA:  VCMPE.F32       S20, S0
343DEE:  VLDR            S18, [R0,#0xC]
343DF2:  VMRS            APSR_nzcv, FPSCR
343DF6:  BGT             loc_343E10
343DF8:  VMOV            R0, S16; this
343DFC:  VMOV            R1, S18; float
343E00:  BLX             j__ZN6CWorld19FindGroundZForCoordEff; CWorld::FindGroundZForCoord(float,float)
343E04:  VMOV.F32        S0, #0.5
343E08:  VMOV            S2, R0
343E0C:  VADD.F32        S20, S2, S0
343E10:  MOV             R0, R4; this
343E12:  BLX             j__ZN14CRunningScript39CollectNextParameterWithoutIncreasingPCEv; CRunningScript::CollectNextParameterWithoutIncreasingPC(void)
343E16:  BLX             j__ZN8CPickups20GetActualPickupIndexEi; CPickups::GetActualPickupIndex(int)
343E1A:  VMOV            R0, S16
343E1E:  LDR.W           R3, =(ScriptParams_ptr - 0x343E30)
343E22:  VMOV            R1, S18
343E26:  MOVS            R6, #0
343E28:  VMOV            R2, S20
343E2C:  ADD             R3, PC; ScriptParams_ptr
343E2E:  LDR             R5, [R3]; ScriptParams
343E30:  LDRB            R3, [R5,#(dword_81A90C - 0x81A908)]
343E32:  STRD.W          R3, R6, [SP,#0xA0+var_A0]
343E36:  MOV             R3, R8
343E38:  STRD.W          R6, R6, [SP,#0xA0+var_98]
343E3C:  STR             R6, [SP,#0xA0+var_90]
343E3E:  BLX             j__ZN8CPickups14GenerateNewOneE7CVectorjhjjbPc; CPickups::GenerateNewOne(CVector,uint,uchar,uint,uint,bool,char *)
343E42:  STR             R0, [R5]
343E44:  MOV             R0, R4; this
343E46:  MOVS            R1, #1; __int16
343E48:  BLX             j__ZN14CRunningScript15StoreParametersEs; CRunningScript::StoreParameters(short)
343E4C:  B.W             loc_344776; jumptable 00343A00 cases 540,561,592
343E50:  MOV             R0, R4; jumptable 00343A00 case 532
343E52:  MOVS            R1, #1; __int16
343E54:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
343E58:  LDR.W           R0, =(ScriptParams_ptr - 0x343E60)
343E5C:  ADD             R0, PC; ScriptParams_ptr
343E5E:  LDR             R0, [R0]; ScriptParams
343E60:  LDR             R0, [R0]; this
343E62:  BLX             j__ZN8CPickups16IsPickUpPickedUpEi; CPickups::IsPickUpPickedUp(int)
343E66:  B.W             loc_344680
343E6A:  MOV             R0, R4; jumptable 00343A00 case 533
343E6C:  MOVS            R1, #1; __int16
343E6E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
343E72:  LDR.W           R0, =(ScriptParams_ptr - 0x343E7A)
343E76:  ADD             R0, PC; ScriptParams_ptr
343E78:  LDR             R0, [R0]; ScriptParams
343E7A:  LDR             R0, [R0]; this
343E7C:  BLX             j__ZN8CPickups12RemovePickUpEi; CPickups::RemovePickUp(int)
343E80:  B.W             loc_344774
343E84:  MOV             R0, R4; jumptable 00343A00 case 534
343E86:  MOVS            R1, #2; __int16
343E88:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
343E8C:  LDR.W           R0, =(ScriptParams_ptr - 0x343E94)
343E90:  ADD             R0, PC; ScriptParams_ptr
343E92:  LDR             R0, [R0]; ScriptParams
343E94:  LDR             R1, [R0]
343E96:  CMP             R1, #0
343E98:  BLT.W           loc_34458A
343E9C:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x343EA8)
343EA0:  UXTB            R3, R1
343EA2:  LSRS            R1, R1, #8
343EA4:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
343EA6:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
343EA8:  LDR             R0, [R0]; CPools::ms_pVehiclePool
343EAA:  LDR             R2, [R0,#4]
343EAC:  LDRB            R2, [R2,R1]
343EAE:  CMP             R2, R3
343EB0:  BNE.W           loc_34458A
343EB4:  MOVW            R2, #0xA2C
343EB8:  LDR             R0, [R0]
343EBA:  MLA.W           R0, R1, R2, R0
343EBE:  B               loc_34458C
343EC0:  DCFS 0.3
343EC4:  DCFS 4.6566e-10
343EC8:  DCFS 0.000015259
343ECC:  DCFS -100.0
343ED0:  SUB.W           R5, R7, #-var_36; jumptable 00343A00 case 535
343ED4:  MOV             R0, R4; this
343ED6:  MOVS            R2, #8; unsigned __int8
343ED8:  MOV             R1, R5; char *
343EDA:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
343EDE:  LDR.W           R0, =(TheText_ptr - 0x343EE8)
343EE2:  MOV             R1, R5; CKeyGen *
343EE4:  ADD             R0, PC; TheText_ptr
343EE6:  LDR             R0, [R0]; TheText ; this
343EE8:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
343EEC:  MOV             R5, R0
343EEE:  MOV             R0, R4; this
343EF0:  MOVS            R1, #2; __int16
343EF2:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
343EF6:  LDR.W           R0, =(ScriptParams_ptr - 0x343F02)
343EFA:  MOVW            R2, #0xFFFF
343EFE:  ADD             R0, PC; ScriptParams_ptr
343F00:  LDR             R0, [R0]; ScriptParams
343F02:  LDRD.W          R1, R0, [R0]; unsigned __int16 *
343F06:  ADD             R0, R2
343F08:  UXTH            R2, R0; unsigned int
343F0A:  MOV             R0, R5; this
343F0C:  BLX             j__ZN9CMessages14AddBigMessageQEPtjt; CMessages::AddBigMessageQ(ushort *,uint,ushort)
343F10:  B.W             loc_344774
343F14:  ADD             R5, SP, #0xA0+var_40; jumptable 00343A00 case 539
343F16:  MOV             R0, R4; this
343F18:  MOVS            R2, #8; unsigned __int8
343F1A:  MOV             R1, R5; char *
343F1C:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
343F20:  MOV             R0, R5; this
343F22:  BLX             j__ZN8CGarages15FindGarageIndexEPc; CGarages::FindGarageIndex(char *)
343F26:  MOV             R5, R0
343F28:  MOV             R0, R4; this
343F2A:  MOVS            R1, #1; __int16
343F2C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
343F30:  CMP             R5, #0
343F32:  BLT.W           loc_344774
343F36:  LDR.W           R0, =(ScriptParams_ptr - 0x343F3E)
343F3A:  ADD             R0, PC; ScriptParams_ptr
343F3C:  LDR             R0, [R0]; ScriptParams
343F3E:  LDR             R0, [R0]
343F40:  CMP.W           R0, #0xFFFFFFFF
343F44:  BLE.W           loc_344760
343F48:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x343F54)
343F4C:  UXTB            R3, R0
343F4E:  LSRS            R0, R0, #8
343F50:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
343F52:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
343F54:  LDR             R1, [R1]; CPools::ms_pVehiclePool
343F56:  LDR             R2, [R1,#4]
343F58:  LDRB            R2, [R2,R0]; CAutomobile *
343F5A:  CMP             R2, R3
343F5C:  BNE.W           loc_34476C
343F60:  MOVW            R2, #0xA2C
343F64:  LDR             R1, [R1]
343F66:  MLA.W           R1, R0, R2, R1
343F6A:  B.W             loc_34476E
343F6E:  MOV             R0, R4; jumptable 00343A00 case 545
343F70:  MOVS            R1, #2; __int16
343F72:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
343F76:  LDR.W           R0, =(ScriptParams_ptr - 0x343F7E)
343F7A:  ADD             R0, PC; ScriptParams_ptr
343F7C:  LDR             R1, [R0]; ScriptParams ; int
343F7E:  LDRD.W          R0, R4, [R1]; this
343F82:  CMP             R4, #0
343F84:  IT NE
343F86:  MOVNE           R4, #1
343F88:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
343F8C:  STRB.W          R4, [R0,#0x12C]
343F90:  B               loc_344774
343F92:  MOV             R0, R4; jumptable 00343A00 case 547
343F94:  MOVS            R1, #2; __int16
343F96:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
343F9A:  LDR.W           R0, =(ScriptParams_ptr - 0x343FA2)
343F9E:  ADD             R0, PC; ScriptParams_ptr
343FA0:  LDR             R0, [R0]; ScriptParams
343FA2:  LDR             R1, [R0]; unsigned int
343FA4:  CMP             R1, #0
343FA6:  BLT.W           loc_3445A2
343FAA:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x343FB6)
343FAE:  UXTB            R3, R1
343FB0:  LSRS            R1, R1, #8
343FB2:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
343FB4:  LDR             R0, [R0]; CPools::ms_pPedPool ...
343FB6:  LDR             R0, [R0]; CPools::ms_pPedPool
343FB8:  LDR             R2, [R0,#4]
343FBA:  LDRB            R2, [R2,R1]
343FBC:  CMP             R2, R3
343FBE:  BNE.W           loc_3445A2
343FC2:  MOVW            R2, #0x7CC
343FC6:  LDR             R0, [R0]
343FC8:  MLA.W           R4, R1, R2, R0
343FCC:  B               loc_3445A4
343FCE:  MOV             R0, R4; jumptable 00343A00 case 548
343FD0:  MOVS            R1, #2; __int16
343FD2:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
343FD6:  LDR.W           R0, =(ScriptParams_ptr - 0x343FE2)
343FDA:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x343FE4)
343FDE:  ADD             R0, PC; ScriptParams_ptr
343FE0:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
343FE2:  LDR             R0, [R0]; ScriptParams
343FE4:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
343FE6:  LDR             R2, [R0]
343FE8:  VLDR            S0, [R0,#4]
343FEC:  LDR             R0, [R1]; CPools::ms_pVehiclePool
343FEE:  VCVT.F32.S32    S0, S0
343FF2:  LSRS            R1, R2, #8
343FF4:  MOVW            R2, #0xA2C
343FF8:  LDR             R0, [R0]
343FFA:  MLA.W           R0, R1, R2, R0
343FFE:  ADDW            R0, R0, #0x4CC
344002:  B               loc_34475A
344004:  MOV             R0, R4; jumptable 00343A00 case 550
344006:  MOVS            R1, #1; __int16
344008:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34400C:  LDR.W           R0, =(ScriptParams_ptr - 0x34401C)
344010:  MOVW            R3, #0x7CC
344014:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x34401E)
344018:  ADD             R0, PC; ScriptParams_ptr
34401A:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
34401C:  LDR             R0, [R0]; ScriptParams
34401E:  LDR             R1, [R1]; CPools::ms_pPedPool ...
344020:  LDR             R2, [R0]
344022:  LDR             R1, [R1]; CPools::ms_pPedPool
344024:  LSRS            R2, R2, #8
344026:  LDR             R1, [R1]
344028:  MLA.W           R1, R2, R3, R1
34402C:  ADDW            R1, R1, #0x544
344030:  B               loc_34405E
344032:  MOV             R0, R4; jumptable 00343A00 case 551
344034:  MOVS            R1, #1; __int16
344036:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34403A:  LDR.W           R0, =(ScriptParams_ptr - 0x34404A)
34403E:  MOVW            R3, #0xA2C
344042:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x34404C)
344046:  ADD             R0, PC; ScriptParams_ptr
344048:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
34404A:  LDR             R0, [R0]; ScriptParams
34404C:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
34404E:  LDR             R2, [R0]
344050:  LDR             R1, [R1]; CPools::ms_pVehiclePool
344052:  LSRS            R2, R2, #8
344054:  LDR             R1, [R1]
344056:  MLA.W           R1, R2, R3, R1
34405A:  ADDW            R1, R1, #0x4CC
34405E:  VLDR            S0, [R1]
344062:  VCVT.S32.F32    S0, S0
344066:  VSTR            S0, [R0]
34406A:  MOV             R0, R4; this
34406C:  MOVS            R1, #1; __int16
34406E:  BLX             j__ZN14CRunningScript15StoreParametersEs; CRunningScript::StoreParameters(short)
344072:  B               loc_344774
344074:  MOV             R0, R4; jumptable 00343A00 case 553
344076:  MOVS            R1, #3; __int16
344078:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34407C:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x34408C)
344080:  MOVW            R6, #0xA2C
344084:  LDR.W           R0, =(ScriptParams_ptr - 0x34408E)
344088:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
34408A:  ADD             R0, PC; ScriptParams_ptr
34408C:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
34408E:  LDR             R0, [R0]; ScriptParams
344090:  LDRD.W          R2, R3, [R0]
344094:  LDR             R1, [R1]; CPools::ms_pVehiclePool
344096:  LSRS            R2, R2, #8
344098:  LDR             R1, [R1]
34409A:  MLA.W           R1, R2, R6, R1
34409E:  MOVS            R6, #0
3440A0:  STRB.W          R3, [R1,#0x438]
3440A4:  LDR             R0, [R0,#(dword_81A910 - 0x81A908)]
3440A6:  STRB.W          R0, [R1,#0x439]
3440AA:  B               loc_344776; jumptable 00343A00 cases 540,561,592
3440AC:  MOV             R0, R4; jumptable 00343A00 case 554
3440AE:  MOVS            R1, #6; __int16
3440B0:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3440B4:  LDR.W           R0, =(ScriptParams_ptr - 0x3440C2)
3440B8:  MOVS            R6, #0
3440BA:  LDR.W           R5, =(ThePaths_ptr - 0x3440C6)
3440BE:  ADD             R0, PC; ScriptParams_ptr
3440C0:  STR             R6, [SP,#0xA0+var_94]
3440C2:  ADD             R5, PC; ThePaths_ptr
3440C4:  LDR             R0, [R0]; ScriptParams
3440C6:  VLDR            S0, [R0]
3440CA:  VLDR            S6, [R0,#0xC]
3440CE:  VLDR            S2, [R0,#4]
3440D2:  VLDR            S10, [R0,#0x10]
3440D6:  VMIN.F32        D4, D0, D3
3440DA:  VMAX.F32        D0, D0, D3
3440DE:  VLDR            S4, [R0,#8]
3440E2:  VMIN.F32        D3, D1, D5
3440E6:  VMAX.F32        D1, D1, D5
3440EA:  VMOV            R1, S8
3440EE:  VMOV            R2, S0
3440F2:  VLDR            S0, [R0,#0x14]
3440F6:  VMOV            R3, S6
3440FA:  LDR             R0, [R5]; ThePaths
3440FC:  B               loc_344150
3440FE:  MOV             R0, R4; jumptable 00343A00 case 555
344100:  MOVS            R1, #6; __int16
344102:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
344106:  LDR.W           R0, =(ScriptParams_ptr - 0x344114)
34410A:  MOVS            R6, #0
34410C:  LDR.W           R5, =(ThePaths_ptr - 0x344116)
344110:  ADD             R0, PC; ScriptParams_ptr
344112:  ADD             R5, PC; ThePaths_ptr
344114:  LDR             R0, [R0]; ScriptParams
344116:  VLDR            S0, [R0]
34411A:  VLDR            S6, [R0,#0xC]
34411E:  VLDR            S2, [R0,#4]
344122:  VLDR            S10, [R0,#0x10]
344126:  VMIN.F32        D4, D0, D3
34412A:  VMAX.F32        D0, D0, D3
34412E:  VLDR            S4, [R0,#8]
344132:  VMIN.F32        D3, D1, D5
344136:  VMAX.F32        D1, D1, D5
34413A:  VMOV            R1, S8; float
34413E:  VMOV            R2, S0; float
344142:  VLDR            S0, [R0,#0x14]
344146:  LDR             R0, [R5]; ThePaths ; this
344148:  MOVS            R5, #1
34414A:  VMOV            R3, S6; float
34414E:  STR             R5, [SP,#0xA0+var_94]; bool
344150:  VMAX.F32        D3, D2, D0
344154:  STR             R6, [SP,#0xA0+var_90]; bool
344156:  VMIN.F32        D0, D2, D0
34415A:  VSTR            S2, [SP,#0xA0+var_A0]
34415E:  VSTR            S0, [SP,#0xA0+var_9C]
344162:  VSTR            S6, [SP,#0xA0+var_98]
344166:  BLX             j__ZN9CPathFind23SwitchPedRoadsOffInAreaEffffffbb; CPathFind::SwitchPedRoadsOffInArea(float,float,float,float,float,float,bool,bool)
34416A:  B               loc_344776; jumptable 00343A00 cases 540,561,592
34416C:  MOV             R0, R4; jumptable 00343A00 case 565
34416E:  MOVS            R1, #3
344170:  B               loc_344176
344172:  MOV             R0, R4; jumptable 00343A00 case 566
344174:  MOVS            R1, #2; __int16
344176:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34417A:  B               loc_344774
34417C:  MOV             R0, R4; jumptable 00343A00 case 567
34417E:  MOVS            R1, #4; __int16
344180:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
344184:  LDR.W           R0, =(ScriptParams_ptr - 0x34418C)
344188:  ADD             R0, PC; ScriptParams_ptr
34418A:  LDR             R0, [R0]; ScriptParams
34418C:  ADDS            R3, R0, #4
34418E:  LDM             R3, {R1-R3}; int
344190:  LDRSH.W         R0, [R0]; this
344194:  BLX             j__ZN6CGangs14SetGangWeaponsEsiii; CGangs::SetGangWeapons(short,int,int,int)
344198:  B               loc_344774
34419A:  MOV             R0, R4; jumptable 00343A00 case 571
34419C:  MOVS            R1, #2; __int16
34419E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3441A2:  LDR.W           R0, =(ScriptParams_ptr - 0x3441AA)
3441A6:  ADD             R0, PC; ScriptParams_ptr
3441A8:  LDR             R0, [R0]; ScriptParams
3441AA:  LDR             R1, [R0]
3441AC:  CMP             R1, #0
3441AE:  BLT.W           loc_3445F2
3441B2:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x3441BE)
3441B6:  UXTB            R3, R1
3441B8:  LSRS            R1, R1, #8
3441BA:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
3441BC:  LDR             R0, [R0]; CPools::ms_pPedPool ...
3441BE:  LDR             R0, [R0]; CPools::ms_pPedPool
3441C0:  LDR             R2, [R0,#4]
3441C2:  LDRB            R2, [R2,R1]
3441C4:  CMP             R2, R3
3441C6:  BNE.W           loc_3445F2
3441CA:  MOVW            R2, #0x7CC
3441CE:  LDR             R0, [R0]
3441D0:  MLA.W           R0, R1, R2, R0
3441D4:  B               loc_3445F4
3441D6:  MOV             R0, R4; jumptable 00343A00 case 572
3441D8:  MOVS            R1, #1; __int16
3441DA:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3441DE:  LDR.W           R0, =(ScriptParams_ptr - 0x3441E8)
3441E2:  MOVS            R2, #8; unsigned __int8
3441E4:  ADD             R0, PC; ScriptParams_ptr
3441E6:  LDR             R0, [R0]; ScriptParams
3441E8:  LDR             R1, [R0]
3441EA:  SUBS            R1, #1
3441EC:  STR             R1, [R0]
3441EE:  ADD             R1, SP, #0xA0+var_58; char *
3441F0:  MOV             R0, R4; this
3441F2:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
3441F6:  LDRB.W          R0, [SP,#0xA0+var_58]
3441FA:  MOVS            R2, #(byte_9+3); char *
3441FC:  SUB.W           R1, R0, #0x41 ; 'A'
344200:  UXTB            R1, R1
344202:  CMP             R1, #0x19
344204:  ITT LS
344206:  ADDLS           R0, #0x20 ; ' '
344208:  STRBLS.W        R0, [SP,#0xA0+var_58]
34420C:  LDRB.W          R0, [SP,#0xA0+var_58+1]
344210:  SUB.W           R1, R0, #0x41 ; 'A'
344214:  UXTB            R1, R1
344216:  CMP             R1, #0x1A
344218:  ITT CC
34421A:  ADDCC           R0, #0x20 ; ' '
34421C:  STRBCC.W        R0, [SP,#0xA0+var_58+1]
344220:  LDRB.W          R0, [SP,#0xA0+var_58+2]
344224:  SUB.W           R1, R0, #0x41 ; 'A'
344228:  UXTB            R1, R1
34422A:  CMP             R1, #0x19
34422C:  ITT LS
34422E:  ADDLS           R0, #0x20 ; ' '
344230:  STRBLS.W        R0, [SP,#0xA0+var_58+2]
344234:  LDRB.W          R0, [SP,#0xA0+var_58+3]
344238:  SUB.W           R1, R0, #0x41 ; 'A'
34423C:  UXTB            R1, R1
34423E:  CMP             R1, #0x19
344240:  ITT LS
344242:  ADDLS           R0, #0x20 ; ' '
344244:  STRBLS.W        R0, [SP,#0xA0+var_58+3]
344248:  LDRB.W          R0, [SP,#0xA0+var_54]
34424C:  SUB.W           R1, R0, #0x41 ; 'A'
344250:  UXTB            R1, R1
344252:  CMP             R1, #0x19
344254:  ITT LS
344256:  ADDLS           R0, #0x20 ; ' '
344258:  STRBLS.W        R0, [SP,#0xA0+var_54]
34425C:  LDRB.W          R0, [SP,#0xA0+var_54+1]
344260:  SUB.W           R1, R0, #0x41 ; 'A'
344264:  UXTB            R1, R1
344266:  CMP             R1, #0x19
344268:  ITT LS
34426A:  ADDLS           R0, #0x20 ; ' '
34426C:  STRBLS.W        R0, [SP,#0xA0+var_54+1]
344270:  LDRB.W          R0, [SP,#0xA0+var_54+2]
344274:  SUB.W           R1, R0, #0x41 ; 'A'
344278:  UXTB            R1, R1
34427A:  CMP             R1, #0x19
34427C:  ITT LS
34427E:  ADDLS           R0, #0x20 ; ' '
344280:  STRBLS.W        R0, [SP,#0xA0+var_54+2]
344284:  LDRB.W          R0, [SP,#0xA0+var_54+3]
344288:  SUB.W           R1, R0, #0x41 ; 'A'
34428C:  UXTB            R1, R1
34428E:  CMP             R1, #0x19
344290:  ITT LS
344292:  ADDLS           R0, #0x20 ; ' '
344294:  STRBLS.W        R0, [SP,#0xA0+var_54+3]
344298:  ADD             R1, SP, #0xA0+var_58; int
34429A:  LDR.W           R0, =(ScriptParams_ptr - 0x3442A2)
34429E:  ADD             R0, PC; ScriptParams_ptr
3442A0:  LDR             R5, [R0]; ScriptParams
3442A2:  LDR             R0, [R5]; this
3442A4:  BLX             j__ZN10CStreaming18RequestSpecialCharEiPKci; CStreaming::RequestSpecialChar(int,char const*,int)
3442A8:  LDR.W           R0, =(_ZN11CTheScripts21ScriptResourceManagerE_ptr - 0x3442B2)
3442AC:  LDR             R1, [R5]
3442AE:  ADD             R0, PC; _ZN11CTheScripts21ScriptResourceManagerE_ptr
3442B0:  ADD.W           R1, R1, #0x122
3442B4:  B               loc_3443E4
3442B6:  MOV             R0, R4; jumptable 00343A00 case 573
3442B8:  MOVS            R1, #1; __int16
3442BA:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3442BE:  LDR.W           R0, =(ScriptParams_ptr - 0x3442C6)
3442C2:  ADD             R0, PC; ScriptParams_ptr
3442C4:  LDR             R1, [R0]; ScriptParams ; int
3442C6:  LDR             R0, [R1]
3442C8:  SUBS            R0, #1; this
3442CA:  STR             R0, [R1]
3442CC:  BLX             j__ZN10CStreaming20HasSpecialCharLoadedEi; CStreaming::HasSpecialCharLoaded(int)
3442D0:  B               loc_344680
3442D2:  MOV             R0, R4; jumptable 00343A00 case 577
3442D4:  MOVS            R1, #1; __int16
3442D6:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3442DA:  LDR.W           R0, =(ScriptParams_ptr - 0x3442EA)
3442DE:  MOV.W           R2, #0x194
3442E2:  LDR.W           R1, =(_ZN6CWorld7PlayersE_ptr - 0x3442EC)
3442E6:  ADD             R0, PC; ScriptParams_ptr
3442E8:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
3442EA:  LDR             R0, [R0]; ScriptParams
3442EC:  LDR             R1, [R1]; CWorld::Players ...
3442EE:  LDR             R0, [R0]
3442F0:  MLA.W           R0, R0, R2, R1; this
3442F4:  BLX             j__ZN11CPlayerInfo20IsPlayerInRemoteModeEv; CPlayerInfo::IsPlayerInRemoteMode(void)
3442F8:  B               loc_344680
3442FA:  MOV             R0, R4; jumptable 00343A00 case 578
3442FC:  MOVS            R1, #2; __int16
3442FE:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
344302:  LDR.W           R0, =(ScriptParams_ptr - 0x344312)
344306:  MOVW            R3, #0xA2C
34430A:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x344314)
34430E:  ADD             R0, PC; ScriptParams_ptr
344310:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
344312:  LDR             R0, [R0]; ScriptParams
344314:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
344316:  LDR             R2, [R0]
344318:  LDR             R1, [R1]; CPools::ms_pVehiclePool
34431A:  LDRB            R0, [R0,#(dword_81A90C - 0x81A908)]
34431C:  LSRS            R2, R2, #8
34431E:  LDR             R1, [R1]
344320:  MLA.W           R4, R2, R3, R1
344324:  AND.W           R0, R0, #7
344328:  LDRB.W          R1, [R4,#0x4B2]
34432C:  AND.W           R1, R1, #0xF8
344330:  ORRS            R0, R1
344332:  STRB.W          R0, [R4,#0x4B2]
344336:  MOV.W           R0, #0xFFFFFFFF; int
34433A:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
34433E:  STR.W           R0, [R4,#0x4DC]
344342:  B               loc_344774
344344:  MOV             R0, R4; jumptable 00343A00 case 580
344346:  MOVS            R1, #3; __int16
344348:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34434C:  LDR.W           R0, =(ScriptParams_ptr - 0x34435A)
344350:  MOVS            R6, #0
344352:  LDR.W           R1, =(_ZN12CCutsceneMgr17ms_cutsceneOffsetE_ptr - 0x34435C)
344356:  ADD             R0, PC; ScriptParams_ptr
344358:  ADD             R1, PC; _ZN12CCutsceneMgr17ms_cutsceneOffsetE_ptr
34435A:  LDR             R0, [R0]; ScriptParams
34435C:  LDR             R1, [R1]; CCutsceneMgr::ms_cutsceneOffset ...
34435E:  LDRD.W          R2, R3, [R0]
344362:  LDR             R0, [R0,#(dword_81A910 - 0x81A908)]
344364:  STRD.W          R2, R3, [R1]; CCutsceneMgr::ms_cutsceneOffset
344368:  STR             R0, [R1,#(dword_9ABFA0 - 0x9ABF98)]
34436A:  B               loc_344776; jumptable 00343A00 cases 540,561,592
34436C:  MOV             R0, R4; jumptable 00343A00 case 581
34436E:  MOVS            R1, #1; __int16
344370:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
344374:  LDR.W           R0, =(ScriptParams_ptr - 0x34437C)
344378:  ADD             R0, PC; ScriptParams_ptr
34437A:  LDR             R0, [R0]; ScriptParams
34437C:  LDR             R1, [R0]
34437E:  CMP             R1, #0
344380:  BLT.W           loc_344620
344384:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x344390)
344388:  UXTB            R3, R1
34438A:  LSRS            R1, R1, #8
34438C:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
34438E:  LDR             R0, [R0]; CPools::ms_pPedPool ...
344390:  LDR             R0, [R0]; CPools::ms_pPedPool
344392:  LDR             R2, [R0,#4]
344394:  LDRB            R2, [R2,R1]
344396:  CMP             R2, R3
344398:  BNE.W           loc_344620
34439C:  MOVW            R2, #0x7CC
3443A0:  LDR             R0, [R0]
3443A2:  MLA.W           R8, R1, R2, R0
3443A6:  B               loc_344624
3443A8:  MOV             R0, R4; jumptable 00343A00 case 583
3443AA:  MOVS            R1, #1; __int16
3443AC:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3443B0:  LDR.W           R0, =(ScriptParams_ptr - 0x3443B8)
3443B4:  ADD             R0, PC; ScriptParams_ptr
3443B6:  LDR             R0, [R0]; ScriptParams
3443B8:  LDR             R5, [R0]
3443BA:  CMP.W           R5, #0xFFFFFFFF
3443BE:  BGT             loc_3443D4
3443C0:  LDR.W           R0, =(_ZN11CTheScripts15UsedObjectArrayE_ptr - 0x3443CA)
3443C4:  NEGS            R1, R5
3443C6:  ADD             R0, PC; _ZN11CTheScripts15UsedObjectArrayE_ptr
3443C8:  RSB.W           R1, R1, R1,LSL#3
3443CC:  LDR             R0, [R0]; CTheScripts::UsedObjectArray ...
3443CE:  ADD.W           R0, R0, R1,LSL#2
3443D2:  LDR             R5, [R0,#0x18]
3443D4:  MOV             R0, R5; this
3443D6:  MOVS            R1, #0xC; int
3443D8:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
3443DC:  LDR.W           R0, =(_ZN11CTheScripts21ScriptResourceManagerE_ptr - 0x3443E6)
3443E0:  MOV             R1, R5; int
3443E2:  ADD             R0, PC; _ZN11CTheScripts21ScriptResourceManagerE_ptr
3443E4:  LDR             R0, [R0]; this
3443E6:  MOVS            R2, #2; unsigned int
3443E8:  MOV             R3, R4; CRunningScript *
3443EA:  BLX             j__ZN22CScriptResourceManager20AddToResourceManagerEijP14CRunningScript; CScriptResourceManager::AddToResourceManager(int,uint,CRunningScript *)
3443EE:  B               loc_344774
3443F0:  MOV             R0, R4; jumptable 00343A00 case 584
3443F2:  MOVS            R1, #1; __int16
3443F4:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3443F8:  LDR.W           R0, =(ScriptParams_ptr - 0x344400)
3443FC:  ADD             R0, PC; ScriptParams_ptr
3443FE:  LDR             R0, [R0]; ScriptParams
344400:  LDR             R0, [R0]
344402:  CMP.W           R0, #0xFFFFFFFF
344406:  BGT             loc_34441C
344408:  LDR.W           R1, =(_ZN11CTheScripts15UsedObjectArrayE_ptr - 0x344412)
34440C:  NEGS            R0, R0
34440E:  ADD             R1, PC; _ZN11CTheScripts15UsedObjectArrayE_ptr
344410:  RSB.W           R0, R0, R0,LSL#3
344414:  LDR             R1, [R1]; CTheScripts::UsedObjectArray ...
344416:  ADD.W           R0, R1, R0,LSL#2
34441A:  LDR             R0, [R0,#0x18]
34441C:  LDR.W           R1, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x344428)
344420:  ADD.W           R0, R0, R0,LSL#2
344424:  ADD             R1, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
344426:  LDR             R1, [R1]; CStreaming::ms_aInfoForModel ...
344428:  ADD.W           R0, R1, R0,LSL#2
34442C:  LDRB            R1, [R0,#0x10]
34442E:  CMP             R1, #1
344430:  IT NE
344432:  MOVNE           R1, #0
344434:  B               loc_344682
344436:  MOV             R0, R4; jumptable 00343A00 case 585
344438:  MOVS            R1, #1; __int16
34443A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34443E:  LDR             R0, =(ScriptParams_ptr - 0x344444)
344440:  ADD             R0, PC; ScriptParams_ptr
344442:  LDR             R0, [R0]; ScriptParams
344444:  LDR             R5, [R0]
344446:  CMP.W           R5, #0xFFFFFFFF
34444A:  BGT             loc_34445E
34444C:  LDR             R0, =(_ZN11CTheScripts15UsedObjectArrayE_ptr - 0x344454)
34444E:  NEGS            R1, R5
344450:  ADD             R0, PC; _ZN11CTheScripts15UsedObjectArrayE_ptr
344452:  RSB.W           R1, R1, R1,LSL#3
344456:  LDR             R0, [R0]; CTheScripts::UsedObjectArray ...
344458:  ADD.W           R0, R0, R1,LSL#2
34445C:  LDR             R5, [R0,#0x18]
34445E:  LDR             R0, =(_ZN11CTheScripts21ScriptResourceManagerE_ptr - 0x34446A)
344460:  MOV             R1, R5; int
344462:  MOVS            R2, #2; unsigned int
344464:  MOV             R3, R4; CRunningScript *
344466:  ADD             R0, PC; _ZN11CTheScripts21ScriptResourceManagerE_ptr
344468:  LDR             R0, [R0]; this
34446A:  BLX             j__ZN22CScriptResourceManager25RemoveFromResourceManagerEijP14CRunningScript; CScriptResourceManager::RemoveFromResourceManager(int,uint,CRunningScript *)
34446E:  CMP             R0, #0
344470:  BEQ.W           loc_344774
344474:  MOV             R0, R5; this
344476:  BLX             j__ZN10CStreaming28SetMissionDoesntRequireModelEi; CStreaming::SetMissionDoesntRequireModel(int)
34447A:  B               loc_344774
34447C:  MOV             R0, R4; jumptable 00343A00 case 591
34447E:  MOVS            R1, #9; __int16
344480:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
344484:  LDR             R0, =(ScriptParams_ptr - 0x34448E)
344486:  VLDR            S2, =-100.0
34448A:  ADD             R0, PC; ScriptParams_ptr
34448C:  LDR             R0, [R0]; ScriptParams
34448E:  VLDR            S0, [R0,#8]
344492:  VLDR            S16, [R0]
344496:  VCMPE.F32       S0, S2
34449A:  VLDR            S18, [R0,#4]
34449E:  VMRS            APSR_nzcv, FPSCR
3444A2:  BGT             loc_3444B4
3444A4:  VMOV            R0, S16; this
3444A8:  VMOV            R1, S18; float
3444AC:  BLX             j__ZN6CWorld19FindGroundZForCoordEff; CWorld::FindGroundZForCoord(float,float)
3444B0:  VMOV            S0, R0
3444B4:  VLDR            S2, =3000.0
3444B8:  LDR             R0, =(ScriptParams_ptr - 0x3444C6)
3444BA:  VADD.F32        S4, S18, S2
3444BE:  VLDR            S6, =12001.0
3444C2:  ADD             R0, PC; ScriptParams_ptr
3444C4:  LDR.W           R12, [R4,#0x14]
3444C8:  VSTR            S18, [SP,#0xA0+var_54]
3444CC:  VADD.F32        S2, S16, S2
3444D0:  LDR             R6, [R0]; ScriptParams
3444D2:  VSTR            S16, [SP,#0xA0+var_58]
3444D6:  VSTR            S0, [SP,#0xA0+var_50]
3444DA:  LDRB            R2, [R6,#(dword_81A920 - 0x81A908)]; CEntity *
3444DC:  VMUL.F32        S4, S4, S6
3444E0:  LDRB            R3, [R6,#(dword_81A924 - 0x81A908)]; unsigned __int8
3444E2:  LDRB.W          R1, [R6,#(dword_81A928 - 0x81A908)]
3444E6:  VLDR            S8, [R6,#0xC]
3444EA:  LDRB            R5, [R6,#(dword_81A918 - 0x81A908)]
3444EC:  LDRB            R0, [R6,#(dword_81A91C - 0x81A908)]
3444EE:  MOVS            R6, #0x41700000
3444F4:  STR             R6, [SP,#0xA0+var_68]; float
3444F6:  MOV.W           R6, #0x3FC00000
3444FA:  VCVT.U32.F32    S0, S4
3444FE:  STR             R6, [SP,#0xA0+var_70]; float
344500:  MOVS            R6, #1
344502:  VCVT.F32.U32    S0, S0
344506:  STR             R6, [SP,#0xA0+var_84]; unsigned __int8
344508:  MOVS            R6, #0
34450A:  STRD.W          R6, R6, [SP,#0xA0+var_64]; float
34450E:  STR             R6, [SP,#0xA0+var_6C]; float
344510:  STRD.W          R6, R6, [SP,#0xA0+var_78]; float
344514:  STRD.W          R6, R6, [SP,#0xA0+var_80]; unsigned __int8
344518:  STRD.W          R5, R0, [SP,#0xA0+var_8C]; float
34451C:  MOVS            R0, #0
34451E:  VADD.F32        S0, S2, S0
344522:  MOVT            R0, #0x43E1
344526:  STR             R0, [SP,#0xA0+var_90]; float
344528:  ADD             R0, SP, #0xA0+var_58
34452A:  VSTR            S8, [SP,#0xA0+var_94]
34452E:  STR             R0, [SP,#0xA0+var_98]; unsigned __int8
344530:  MOVS            R0, #0xFF
344532:  STR             R0, [SP,#0xA0+var_9C]; unsigned __int8
344534:  VCVT.U32.F32    S0, S0
344538:  STR             R1, [SP,#0xA0+var_A0]; unsigned __int8
34453A:  MOVS            R1, #0; unsigned int
34453C:  VMOV            R0, S0
344540:  ADD             R0, R4
344542:  ADD             R0, R12; this
344544:  BLX             j__ZN8CCoronas14RegisterCoronaEjP7CEntityhhhhRK7CVectorffhhhhhfbfbfbb; CCoronas::RegisterCorona(uint,CEntity *,uchar,uchar,uchar,uchar,CVector const&,float,float,uchar,uchar,uchar,uchar,uchar,float,bool,float,bool,float,bool,bool)
344548:  B               loc_344776; jumptable 00343A00 cases 540,561,592
34454A:  BLX             j__ZN6CClock10StoreClockEv; jumptable 00343A00 case 595
34454E:  B               loc_344774
344550:  BLX             j__ZN6CClock12RestoreClockEv; jumptable 00343A00 case 596
344554:  B               loc_344774
344556:  MOV             R0, R4; jumptable 00343A00 case 598
344558:  MOVS            R1, #1; __int16
34455A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34455E:  LDR             R0, =(ScriptParams_ptr - 0x34456C)
344560:  MOV.W           R2, #0x194
344564:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x34456E)
344566:  MOVS            R6, #0
344568:  ADD             R0, PC; ScriptParams_ptr
34456A:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
34456C:  LDR             R0, [R0]; ScriptParams
34456E:  LDR             R1, [R1]; CWorld::Players ...
344570:  LDR             R0, [R0]
344572:  MLA.W           R0, R0, R2, R1
344576:  MOVS            R1, #0
344578:  LDRB.W          R0, [R0,#0xDC]
34457C:  CMP             R0, #0
34457E:  IT EQ
344580:  MOVEQ           R1, #1; unsigned __int8
344582:  MOV             R0, R4; this
344584:  BLX             j__ZN14CRunningScript17UpdateCompareFlagEh; CRunningScript::UpdateCompareFlag(uchar)
344588:  B               loc_344776; jumptable 00343A00 cases 540,561,592
34458A:  MOVS            R0, #0; this
34458C:  LDR             R1, =(ScriptParams_ptr - 0x344592)
34458E:  ADD             R1, PC; ScriptParams_ptr
344590:  LDR             R1, [R1]; ScriptParams
344592:  LDR             R1, [R1,#(dword_81A90C - 0x81A908)]
344594:  CMP             R1, #0
344596:  BEQ.W           loc_3446D0
34459A:  MOVS            R1, #1; bool
34459C:  BLX             j__ZN11CAutomobile12SetTaxiLightEb; CAutomobile::SetTaxiLight(bool)
3445A0:  B               loc_344774
3445A2:  MOVS            R4, #0
3445A4:  LDR             R0, =(ScriptParams_ptr - 0x3445AA)
3445A6:  ADD             R0, PC; ScriptParams_ptr
3445A8:  LDR             R0, [R0]; ScriptParams
3445AA:  LDR             R0, [R0,#(dword_81A90C - 0x81A908)]
3445AC:  CMP             R0, #0
3445AE:  BEQ.W           loc_3446DA
3445B2:  MOV             R0, R4; this
3445B4:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
3445B8:  CMP             R0, #1
3445BA:  BNE.W           loc_34472E
3445BE:  MOV             R0, R4; this
3445C0:  BLX             j__ZN6CWorld28FindPlayerSlotWithPedPointerEPv; CWorld::FindPlayerSlotWithPedPointer(void *)
3445C4:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x3445D0)
3445C6:  MOV.W           R3, #0x194
3445CA:  LDR             R2, =(ScriptParams_ptr - 0x3445D2)
3445CC:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
3445CE:  ADD             R2, PC; ScriptParams_ptr
3445D0:  LDR             R1, [R1]; CWorld::Players ...
3445D2:  MLA.W           R0, R0, R3, R1
3445D6:  LDR             R1, [R2]; ScriptParams
3445D8:  LDR             R1, [R1,#(dword_81A90C - 0x81A908)]
3445DA:  LDRB.W          R0, [R0,#0x14F]
3445DE:  CMP             R1, R0
3445E0:  IT GT
3445E2:  MOVGT           R1, R0
3445E4:  ADDW            R0, R4, #0x544
3445E8:  VMOV            S0, R1
3445EC:  VCVT.F32.S32    S0, S0
3445F0:  B               loc_34475A
3445F2:  MOVS            R0, #0; this
3445F4:  LDR             R1, =(ScriptParams_ptr - 0x3445FA)
3445F6:  ADD             R1, PC; ScriptParams_ptr
3445F8:  LDR             R1, [R1]; ScriptParams
3445FA:  LDR             R2, [R1,#(dword_81A90C - 0x81A908)]
3445FC:  CMP             R2, #0
3445FE:  BLT             loc_34466A
344600:  LDR             R1, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x34460A)
344602:  UXTB            R6, R2
344604:  LSRS            R2, R2, #8
344606:  ADD             R1, PC; _ZN6CPools14ms_pObjectPoolE_ptr
344608:  LDR             R1, [R1]; CPools::ms_pObjectPool ...
34460A:  LDR             R1, [R1]; CPools::ms_pObjectPool
34460C:  LDR             R3, [R1,#4]
34460E:  LDRB            R3, [R3,R2]
344610:  CMP             R3, R6
344612:  BNE             loc_34466A
344614:  MOV.W           R3, #0x1A4
344618:  LDR             R1, [R1]
34461A:  MLA.W           R1, R2, R3, R1
34461E:  B               loc_34466C
344620:  MOV.W           R8, #0
344624:  ADD             R1, SP, #0xA0+var_58; char *
344626:  MOV             R0, R4; this
344628:  MOVS            R2, #0x10; unsigned __int8
34462A:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
34462E:  LDR             R0, =(_ZN12CAnimManager26ms_numAnimAssocDefinitionsE_ptr - 0x344634)
344630:  ADD             R0, PC; _ZN12CAnimManager26ms_numAnimAssocDefinitionsE_ptr
344632:  LDR             R0, [R0]; CAnimManager::ms_numAnimAssocDefinitions ...
344634:  LDR             R0, [R0]; CAnimManager::ms_numAnimAssocDefinitions
344636:  CMP             R0, #1
344638:  BLT             loc_344726
34463A:  LDR             R1, =(_ZN12CAnimManager26ms_numAnimAssocDefinitionsE_ptr - 0x344646)
34463C:  ADD             R4, SP, #0xA0+var_58
34463E:  MOVS            R0, #0
344640:  MOVS            R5, #0
344642:  ADD             R1, PC; _ZN12CAnimManager26ms_numAnimAssocDefinitionsE_ptr
344644:  LDR             R6, [R1]; CAnimManager::ms_numAnimAssocDefinitions ...
344646:  BLX             j__ZN12CAnimManager16GetAnimGroupNameE12AssocGroupId; CAnimManager::GetAnimGroupName(AssocGroupId)
34464A:  MOV             R1, R0; char *
34464C:  MOV             R0, R4; char *
34464E:  BLX             strcasecmp
344652:  MOV             R1, R0
344654:  CMP             R1, #0
344656:  IT NE
344658:  MOVNE           R0, #1
34465A:  LDR             R2, [R6]; CAnimManager::ms_numAnimAssocDefinitions
34465C:  ADD             R5, R0
34465E:  UXTH            R0, R5
344660:  CMP             R2, R0
344662:  BLE             loc_344728
344664:  CMP             R1, #0
344666:  BNE             loc_344646
344668:  B               loc_344728
34466A:  MOVS            R1, #0; CEntity *
34466C:  LDRB.W          R2, [R0,#0x485]
344670:  LSLS            R2, R2, #0x1F
344672:  ITT NE
344674:  LDRNE.W         R2, [R0,#0x590]
344678:  CMPNE           R2, #0
34467A:  BNE             loc_34468A
34467C:  BLX             j__ZN9CPhysical18GetHasCollidedWithEP7CEntity; CPhysical::GetHasCollidedWith(CEntity *)
344680:  MOV             R1, R0; unsigned __int8
344682:  MOV             R0, R4; this
344684:  BLX             j__ZN14CRunningScript17UpdateCompareFlagEh; CRunningScript::UpdateCompareFlag(uchar)
344688:  B               loc_344774
34468A:  MOVS            R1, #0
34468C:  B               loc_344682
34468E:  AND.W           R0, R2, #0xFE
344692:  STRB            R0, [R1,#(dword_1C+2)]
344694:  B               loc_344774
344696:  MOV.W           R8, #0
34469A:  MOV             R0, R4; this
34469C:  MOVS            R1, #8; __int16
34469E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3446A2:  LDR             R0, =(ScriptParams_ptr - 0x3446A8)
3446A4:  ADD             R0, PC; ScriptParams_ptr
3446A6:  LDR             R2, [R0]; ScriptParams
3446A8:  LDRD.W          R0, R1, [R2]; int
3446AC:  LDRD.W          R3, LR, [R2,#(dword_81A914 - 0x81A908)]; int
3446B0:  LDRD.W          R5, R12, [R2,#(dword_81A91C - 0x81A908)]
3446B4:  LDR             R4, [R2,#(dword_81A924 - 0x81A908)]
3446B6:  LDRH            R2, [R2,#(dword_81A910 - 0x81A908)]; int
3446B8:  CMP             R4, #0
3446BA:  IT NE
3446BC:  MOVNE           R4, #1
3446BE:  STRD.W          R8, LR, [SP,#0xA0+var_A0]; int
3446C2:  STRD.W          R5, R12, [SP,#0xA0+var_98]; CGameLogic *
3446C6:  STRD.W          R4, R6, [SP,#0xA0+var_90]
3446CA:  BLX             j__ZN7CDarkel11StartFrenzyE11eWeaponTypeitiPtiiibb; CDarkel::StartFrenzy(eWeaponType,int,ushort,int,ushort *,int,int,int,bool,bool)
3446CE:  B               loc_344776; jumptable 00343A00 cases 540,561,592
3446D0:  MOVS            R1, #0; bool
3446D2:  MOVS            R6, #0
3446D4:  BLX             j__ZN11CAutomobile12SetTaxiLightEb; CAutomobile::SetTaxiLight(bool)
3446D8:  B               loc_344776; jumptable 00343A00 cases 540,561,592
3446DA:  MOVS            R0, #word_28; this
3446DC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3446E0:  MOV             R5, R0
3446E2:  MOVS            R6, #0
3446E4:  MOV.W           R0, #0x40800000
3446E8:  MOVS            R1, #0; int
3446EA:  STRD.W          R0, R6, [SP,#0xA0+var_A0]; float
3446EE:  MOV             R0, R5; int
3446F0:  MOVS            R2, #0; int
3446F2:  MOVS            R3, #0xF; int
3446F4:  STRD.W          R6, R6, [SP,#0xA0+var_98]; int
3446F8:  STRD.W          R6, R6, [SP,#0xA0+var_90]; int
3446FC:  BLX             j__ZN15CTaskComplexDieC2E11eWeaponType12AssocGroupId11AnimationIdffbbib; CTaskComplexDie::CTaskComplexDie(eWeaponType,AssocGroupId,AnimationId,float,float,bool,bool,int,bool)
344700:  ADD.W           R8, SP, #0xA0+var_58
344704:  MOVS            R1, #3; int
344706:  MOV             R2, R5; CTask *
344708:  MOVS            R3, #0; bool
34470A:  MOV             R0, R8; this
34470C:  BLX             j__ZN19CEventScriptCommandC2EiP5CTaskb; CEventScriptCommand::CEventScriptCommand(int,CTask *,bool)
344710:  LDR.W           R0, [R4,#0x440]
344714:  MOV             R1, R8; CEvent *
344716:  MOVS            R2, #0; bool
344718:  ADDS            R0, #0x68 ; 'h'; this
34471A:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
34471E:  MOV             R0, R8; this
344720:  BLX             j__ZN19CEventScriptCommandD2Ev; CEventScriptCommand::~CEventScriptCommand()
344724:  B               loc_344776; jumptable 00343A00 cases 540,561,592
344726:  MOVS            R0, #0
344728:  STR.W           R0, [R8,#0x4E0]
34472C:  B               loc_344774
34472E:  LDR             R0, =(ScriptParams_ptr - 0x34473C)
344730:  ADDW            R1, R4, #0x544
344734:  VLDR            S2, =100.0
344738:  ADD             R0, PC; ScriptParams_ptr
34473A:  LDR             R0, [R0]; ScriptParams
34473C:  VLDR            S0, [R0,#4]
344740:  ADD.W           R0, R4, #0x548
344744:  VCVT.F32.S32    S0, S0
344748:  VLDR            S4, [R0]
34474C:  VCMP.F32        S4, S2
344750:  VMRS            APSR_nzcv, FPSCR
344754:  VSTR            S0, [R1]
344758:  BNE             loc_344774
34475A:  VSTR            S0, [R0]
34475E:  B               loc_344774
344760:  MOV             R0, R5; this
344762:  MOVS            R1, #0; CEntity *
344764:  MOVS            R6, #0
344766:  BLX             j__ZN8CGarages28SetTargetCarForMissionGarageEsP11CAutomobile; CGarages::SetTargetCarForMissionGarage(short,CAutomobile *)
34476A:  B               loc_344776; jumptable 00343A00 cases 540,561,592
34476C:  MOVS            R1, #0; CEntity *
34476E:  MOV             R0, R5; this
344770:  BLX             j__ZN8CGarages28SetTargetCarForMissionGarageEsP11CAutomobile; CGarages::SetTargetCarForMissionGarage(short,CAutomobile *)
344774:  MOVS            R6, #0
344776:  LDR             R0, =(__stack_chk_guard_ptr - 0x34477E); jumptable 00343A00 cases 540,561,592
344778:  LDR             R1, [SP,#0xA0+var_2C]
34477A:  ADD             R0, PC; __stack_chk_guard_ptr
34477C:  LDR             R0, [R0]; __stack_chk_guard
34477E:  LDR             R0, [R0]
344780:  SUBS            R0, R0, R1
344782:  ITTTT EQ
344784:  SXTBEQ          R0, R6
344786:  ADDEQ           SP, SP, #0x78 ; 'x'
344788:  VPOPEQ          {D8-D10}
34478C:  POPEQ.W         {R8}
344790:  IT EQ
344792:  POPEQ           {R4-R7,PC}
344794:  BLX             __stack_chk_fail
