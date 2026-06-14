; =========================================================
; Game Engine Function: _ZN27CHIDJoystickXbox360Standard18FindUVsFromMappingEPKc10HIDMappingb
; Address            : 0x2903C8 - 0x290558
; =========================================================

2903C8:  PUSH            {R4-R7,LR}
2903CA:  ADD             R7, SP, #0xC
2903CC:  PUSH.W          {R8-R10}
2903D0:  MOV             R8, R0
2903D2:  LDR             R0, [R1,#8]
2903D4:  MOV             R9, R2
2903D6:  CMP             R0, #0
2903D8:  BEQ.W           loc_2904D6
2903DC:  LDR             R1, [R1,#0xC]
2903DE:  MOVS            R2, #0
2903E0:  MOV.W           R10, #0
2903E4:  MOVS            R5, #0
2903E6:  ADDS            R1, #4
2903E8:  LDR             R6, [R1]
2903EA:  CMP             R6, R3
2903EC:  BNE.W           def_2903FA; jumptable 002903FA default case, cases 14-63
2903F0:  LDR.W           R6, [R1,#-4]
2903F4:  CMP             R6, #0x45 ; 'E'; switch 70 cases
2903F6:  BHI.W           def_2903FA; jumptable 002903FA default case, cases 14-63
2903FA:  TBB.W           [PC,R6]; switch jump
2903FE:  DCB 0x23; jump table for switch statement
2903FF:  DCB 0x23
290400:  DCB 0x23
290401:  DCB 0x23
290402:  DCB 0x2F
290403:  DCB 0x32
290404:  DCB 0x36
290405:  DCB 0x3A
290406:  DCB 0x3E
290407:  DCB 0x42
290408:  DCB 0x45
290409:  DCB 0x49
29040A:  DCB 0x4D
29040B:  DCB 0x51
29040C:  DCB 0x5C
29040D:  DCB 0x5C
29040E:  DCB 0x5C
29040F:  DCB 0x5C
290410:  DCB 0x5C
290411:  DCB 0x5C
290412:  DCB 0x5C
290413:  DCB 0x5C
290414:  DCB 0x5C
290415:  DCB 0x5C
290416:  DCB 0x5C
290417:  DCB 0x5C
290418:  DCB 0x5C
290419:  DCB 0x5C
29041A:  DCB 0x5C
29041B:  DCB 0x5C
29041C:  DCB 0x5C
29041D:  DCB 0x5C
29041E:  DCB 0x5C
29041F:  DCB 0x5C
290420:  DCB 0x5C
290421:  DCB 0x5C
290422:  DCB 0x5C
290423:  DCB 0x5C
290424:  DCB 0x5C
290425:  DCB 0x5C
290426:  DCB 0x5C
290427:  DCB 0x5C
290428:  DCB 0x5C
290429:  DCB 0x5C
29042A:  DCB 0x5C
29042B:  DCB 0x5C
29042C:  DCB 0x5C
29042D:  DCB 0x5C
29042E:  DCB 0x5C
29042F:  DCB 0x5C
290430:  DCB 0x5C
290431:  DCB 0x5C
290432:  DCB 0x5C
290433:  DCB 0x5C
290434:  DCB 0x5C
290435:  DCB 0x5C
290436:  DCB 0x5C
290437:  DCB 0x5C
290438:  DCB 0x5C
290439:  DCB 0x5C
29043A:  DCB 0x5C
29043B:  DCB 0x5C
29043C:  DCB 0x5C
29043D:  DCB 0x5C
29043E:  DCB 0x27
29043F:  DCB 0x27
290440:  DCB 0x2B
290441:  DCB 0x2B
290442:  DCB 0x55
290443:  DCB 0x59
290444:  MOV.W           R10, #1; jumptable 002903FA cases 0-3
290448:  MOV             R5, R6
29044A:  B               def_2903FA; jumptable 002903FA default case, cases 14-63
29044C:  MOV.W           R10, #3; jumptable 002903FA cases 64,65
290450:  MOVS            R5, #0
290452:  B               def_2903FA; jumptable 002903FA default case, cases 14-63
290454:  MOV.W           R10, #4; jumptable 002903FA cases 66,67
290458:  MOVS            R5, #0
29045A:  B               def_2903FA; jumptable 002903FA default case, cases 14-63
29045C:  MOV.W           R10, #0; jumptable 002903FA case 4
290460:  B               loc_2904B4
290462:  MOVS            R5, #0; jumptable 002903FA case 5
290464:  MOV.W           R10, #0
290468:  B               def_2903FA; jumptable 002903FA default case, cases 14-63
29046A:  MOVS            R5, #2; jumptable 002903FA case 6
29046C:  MOV.W           R10, #2
290470:  B               def_2903FA; jumptable 002903FA default case, cases 14-63
290472:  MOV.W           R10, #2; jumptable 002903FA case 7
290476:  MOVS            R5, #3
290478:  B               def_2903FA; jumptable 002903FA default case, cases 14-63
29047A:  MOV.W           R10, #3; jumptable 002903FA case 8
29047E:  MOVS            R5, #4
290480:  B               def_2903FA; jumptable 002903FA default case, cases 14-63
290482:  MOV.W           R10, #3; jumptable 002903FA case 9
290486:  B               loc_2904B4
290488:  MOV.W           R10, #3; jumptable 002903FA case 10
29048C:  MOVS            R5, #2
29048E:  B               def_2903FA; jumptable 002903FA default case, cases 14-63
290490:  MOVS            R5, #3; jumptable 002903FA case 11
290492:  MOV.W           R10, #3
290496:  B               def_2903FA; jumptable 002903FA default case, cases 14-63
290498:  MOV.W           R10, #5; jumptable 002903FA case 12
29049C:  MOVS            R5, #0
29049E:  B               def_2903FA; jumptable 002903FA default case, cases 14-63
2904A0:  MOV.W           R10, #6; jumptable 002903FA case 13
2904A4:  MOVS            R5, #0
2904A6:  B               def_2903FA; jumptable 002903FA default case, cases 14-63
2904A8:  MOV.W           R10, #2; jumptable 002903FA case 68
2904AC:  MOVS            R5, #0
2904AE:  B               def_2903FA; jumptable 002903FA default case, cases 14-63
2904B0:  MOV.W           R10, #2; jumptable 002903FA case 69
2904B4:  MOVS            R5, #1
2904B6:  ADDS            R2, #1; jumptable 002903FA default case, cases 14-63
2904B8:  ADDS            R1, #0x14
2904BA:  CMP             R2, R0
2904BC:  BCC.W           loc_2903E8
2904C0:  CMP.W           R9, #0
2904C4:  BEQ             loc_2904E2
2904C6:  ADR             R1, aWidgetPedMoveL_4; "widget_ped_move_left"
2904C8:  MOV             R0, R9; haystack
2904CA:  BLX             strstr
2904CE:  CBZ             R0, loc_2904E6
2904D0:  MOVS            R6, #5
2904D2:  MOVS            R5, #2
2904D4:  B               loc_2904F4
2904D6:  MOVS            R5, #0
2904D8:  MOV.W           R10, #0
2904DC:  CMP.W           R9, #0
2904E0:  BNE             loc_2904C6
2904E2:  MOV             R6, R10
2904E4:  B               loc_2904F4
2904E6:  ADR             R1, aWidgetPedMoveR_4; "widget_ped_move_right"
2904E8:  MOV             R0, R9; haystack
2904EA:  BLX             strstr
2904EE:  CBZ             R0, loc_29051E
2904F0:  MOVS            R6, #5
2904F2:  MOVS            R5, #3
2904F4:  VMOV.32         D16[0], R5
2904F8:  ADDS            R0, R5, #1
2904FA:  VMOV.I32        Q9, #0x3E000000
2904FE:  VMOV.32         D17[0], R0
290502:  ADDS            R0, R6, #1
290504:  VMOV.32         D16[1], R0
290508:  VMOV.32         D17[1], R6
29050C:  VCVT.F32.S32    Q8, Q8
290510:  VMUL.F32        Q8, Q8, Q9
290514:  VST1.32         {D16-D17}, [R8]
290518:  POP.W           {R8-R10}
29051C:  POP             {R4-R7,PC}
29051E:  ADR             R1, aWidgetVehicleS_9; "widget_vehicle_steer_left"
290520:  MOV             R0, R9; haystack
290522:  BLX             strstr
290526:  CMP             R0, #0
290528:  BNE             loc_2904D0
29052A:  ADR             R1, aWidgetVehicleS_10; "widget_vehicle_steer_right"
29052C:  MOV             R0, R9; haystack
29052E:  BLX             strstr
290532:  CMP             R0, #0
290534:  BNE             loc_2904F0
290536:  ADR             R1, aWidgetPedMoveU_4; "widget_ped_move_up"
290538:  MOV             R0, R9; haystack
29053A:  BLX             strstr
29053E:  MOVS            R6, #5
290540:  CBZ             R0, loc_290546
290542:  MOVS            R5, #4
290544:  B               loc_2904F4
290546:  ADR             R1, aWidgetPedMoveD_4; "widget_ped_move_down"
290548:  MOV             R0, R9; haystack
29054A:  BLX             strstr
29054E:  CMP             R0, #0
290550:  ITE EQ
290552:  MOVEQ           R6, R10
290554:  MOVNE           R5, #1
290556:  B               loc_2904F4
