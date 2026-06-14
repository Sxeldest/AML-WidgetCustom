; =========================================================
; Game Engine Function: sub_F94DC
; Address            : 0xF94DC - 0xF9694
; =========================================================

F94DC:  PUSH            {R7,LR}
F94DE:  MOV             R7, SP
F94E0:  LDR             R1, =(aParachute - 0xF94E6); "PARACHUTE" ...
F94E2:  ADD             R1, PC; "PARACHUTE"
F94E4:  BL              sub_F9748
F94E8:  CBNZ            R0, loc_F94F6
F94EA:  LDR             R0, =(unk_B2CC8 - 0xF94F2)
F94EC:  LDR             R1, =(aParachute - 0xF94F4); "PARACHUTE" ...
F94EE:  ADD             R0, PC; unk_B2CC8
F94F0:  ADD             R1, PC; "PARACHUTE"
F94F2:  BL              sub_107188
F94F6:  LDR             R1, =(aBar - 0xF94FC); "BAR" ...
F94F8:  ADD             R1, PC; "BAR"
F94FA:  BL              sub_F9748
F94FE:  CBNZ            R0, loc_F950C
F9500:  LDR             R0, =(unk_B2CC8 - 0xF9508)
F9502:  LDR             R1, =(aBar - 0xF950A); "BAR" ...
F9504:  ADD             R0, PC; unk_B2CC8
F9506:  ADD             R1, PC; "BAR"
F9508:  BL              sub_107188
F950C:  LDR             R1, =(aGangs - 0xF9512); "GANGS" ...
F950E:  ADD             R1, PC; "GANGS"
F9510:  BL              sub_F9748
F9514:  CBNZ            R0, loc_F9522
F9516:  LDR             R0, =(unk_B2CC8 - 0xF951E)
F9518:  LDR             R1, =(aGangs - 0xF9520); "GANGS" ...
F951A:  ADD             R0, PC; unk_B2CC8
F951C:  ADD             R1, PC; "GANGS"
F951E:  BL              sub_107188
F9522:  LDR             R1, =(aPaulnmac - 0xF9528); "PAULNMAC" ...
F9524:  ADD             R1, PC; "PAULNMAC"
F9526:  BL              sub_F9748
F952A:  CBNZ            R0, loc_F9538
F952C:  LDR             R0, =(unk_B2CC8 - 0xF9534)
F952E:  LDR             R1, =(aPaulnmac - 0xF9536); "PAULNMAC" ...
F9530:  ADD             R0, PC; unk_B2CC8
F9532:  ADD             R1, PC; "PAULNMAC"
F9534:  BL              sub_107188
F9538:  LDR             R1, =(aVending - 0xF953E); "VENDING" ...
F953A:  ADD             R1, PC; "VENDING"
F953C:  BL              sub_F9748
F9540:  CBNZ            R0, loc_F954E
F9542:  LDR             R0, =(unk_B2CC8 - 0xF954A)
F9544:  LDR             R1, =(aVending - 0xF954C); "VENDING" ...
F9546:  ADD             R0, PC; unk_B2CC8
F9548:  ADD             R1, PC; "VENDING"
F954A:  BL              sub_107188
F954E:  LDR             R1, =(aFightB - 0xF9554); "FIGHT_B" ...
F9550:  ADD             R1, PC; "FIGHT_B"
F9552:  BL              sub_F9748
F9556:  CBNZ            R0, loc_F9564
F9558:  LDR             R0, =(unk_B2CC8 - 0xF9560)
F955A:  LDR             R1, =(aFightB - 0xF9562); "FIGHT_B" ...
F955C:  ADD             R0, PC; unk_B2CC8
F955E:  ADD             R1, PC; "FIGHT_B"
F9560:  BL              sub_107188
F9564:  LDR             R1, =(aFightC - 0xF956A); "FIGHT_C" ...
F9566:  ADD             R1, PC; "FIGHT_C"
F9568:  BL              sub_F9748
F956C:  CBNZ            R0, loc_F957A
F956E:  LDR             R0, =(unk_B2CC8 - 0xF9576)
F9570:  LDR             R1, =(aFightC - 0xF9578); "FIGHT_C" ...
F9572:  ADD             R0, PC; unk_B2CC8
F9574:  ADD             R1, PC; "FIGHT_C"
F9576:  BL              sub_107188
F957A:  LDR             R1, =(aFightD - 0xF9580); "FIGHT_D" ...
F957C:  ADD             R1, PC; "FIGHT_D"
F957E:  BL              sub_F9748
F9582:  CBNZ            R0, loc_F9590
F9584:  LDR             R0, =(unk_B2CC8 - 0xF958C)
F9586:  LDR             R1, =(aFightD - 0xF958E); "FIGHT_D" ...
F9588:  ADD             R0, PC; unk_B2CC8
F958A:  ADD             R1, PC; "FIGHT_D"
F958C:  BL              sub_107188
F9590:  LDR             R1, =(aFightE - 0xF9596); "FIGHT_E" ...
F9592:  ADD             R1, PC; "FIGHT_E"
F9594:  BL              sub_F9748
F9598:  CBNZ            R0, loc_F95A6
F959A:  LDR             R0, =(unk_B2CC8 - 0xF95A2)
F959C:  LDR             R1, =(aFightE - 0xF95A4); "FIGHT_E" ...
F959E:  ADD             R0, PC; unk_B2CC8
F95A0:  ADD             R1, PC; "FIGHT_E"
F95A2:  BL              sub_107188
F95A6:  LDR             R0, =(unk_B2CDC - 0xF95B0)
F95A8:  MOVW            R1, #0xC3B
F95AC:  ADD             R0, PC; unk_B2CDC
F95AE:  BL              sub_107188
F95B2:  CBNZ            R0, loc_F95C0
F95B4:  LDR             R0, =(unk_B2CF0 - 0xF95BE)
F95B6:  MOVW            R1, #0xC3B
F95BA:  ADD             R0, PC; unk_B2CF0
F95BC:  BL              sub_107188
F95C0:  LDR             R0, =(unk_B2CDC - 0xF95CA)
F95C2:  MOVW            R1, #0x5CD
F95C6:  ADD             R0, PC; unk_B2CDC
F95C8:  BL              sub_107188
F95CC:  CBNZ            R0, loc_F95DA
F95CE:  LDR             R0, =(unk_B2CF0 - 0xF95D8)
F95D0:  MOVW            R1, #0x5CD
F95D4:  ADD             R0, PC; unk_B2CF0
F95D6:  BL              sub_107188
F95DA:  LDR             R0, =(unk_B2CDC - 0xF95E4)
F95DC:  MOVW            R1, #0x5CE
F95E0:  ADD             R0, PC; unk_B2CDC
F95E2:  BL              sub_107188
F95E6:  CBNZ            R0, loc_F95F4
F95E8:  LDR             R0, =(unk_B2CF0 - 0xF95F2)
F95EA:  MOVW            R1, #0x5CE
F95EE:  ADD             R0, PC; unk_B2CF0
F95F0:  BL              sub_107188
F95F4:  LDR             R0, =(unk_B2CDC - 0xF95FE)
F95F6:  MOVW            R1, #0x607
F95FA:  ADD             R0, PC; unk_B2CDC
F95FC:  BL              sub_107188
F9600:  CBNZ            R0, loc_F960E
F9602:  LDR             R0, =(unk_B2CF0 - 0xF960C)
F9604:  MOVW            R1, #0x607
F9608:  ADD             R0, PC; unk_B2CF0
F960A:  BL              sub_107188
F960E:  LDR             R0, =(unk_B2CDC - 0xF9618)
F9610:  MOVW            R1, #0x60A
F9614:  ADD             R0, PC; unk_B2CDC
F9616:  BL              sub_107188
F961A:  CBNZ            R0, loc_F9628
F961C:  LDR             R0, =(unk_B2CF0 - 0xF9626)
F961E:  MOVW            R1, #0x60A
F9622:  ADD             R0, PC; unk_B2CF0
F9624:  BL              sub_107188
F9628:  LDR             R0, =(unk_B2CDC - 0xF9632)
F962A:  MOVW            R1, #0x157
F962E:  ADD             R0, PC; unk_B2CDC
F9630:  BL              sub_107188
F9634:  CBNZ            R0, loc_F9642
F9636:  LDR             R0, =(unk_B2CF0 - 0xF9640)
F9638:  MOVW            R1, #0x157
F963C:  ADD             R0, PC; unk_B2CF0
F963E:  BL              sub_107188
F9642:  LDR             R0, =(unk_B2CDC - 0xF964C)
F9644:  MOV.W           R1, #0x156
F9648:  ADD             R0, PC; unk_B2CDC
F964A:  BL              sub_107188
F964E:  CBNZ            R0, loc_F965C
F9650:  LDR             R0, =(unk_B2CF0 - 0xF965A)
F9652:  MOV.W           R1, #0x156
F9656:  ADD             R0, PC; unk_B2CF0
F9658:  BL              sub_107188
F965C:  LDR             R0, =(unk_B2CDC - 0xF9666)
F965E:  MOV.W           R1, #0x158
F9662:  ADD             R0, PC; unk_B2CDC
F9664:  BL              sub_107188
F9668:  CBNZ            R0, loc_F9676
F966A:  LDR             R0, =(unk_B2CF0 - 0xF9674)
F966C:  MOV.W           R1, #0x158
F9670:  ADD             R0, PC; unk_B2CF0
F9672:  BL              sub_107188
F9676:  LDR             R0, =(unk_B2CDC - 0xF9680)
F9678:  MOV.W           R1, #0x14A
F967C:  ADD             R0, PC; unk_B2CDC
F967E:  BL              sub_107188
F9682:  CBZ             R0, loc_F9686
F9684:  POP             {R7,PC}
F9686:  LDR             R0, =(unk_B2CF0 - 0xF9690)
F9688:  MOV.W           R1, #0x14A
F968C:  ADD             R0, PC; unk_B2CF0
F968E:  BL              sub_107188
F9692:  POP             {R7,PC}
