; =========================================================
; Game Engine Function: sub_14780C
; Address            : 0x14780C - 0x147B40
; =========================================================

14780C:  PUSH            {R4,R6,R7,LR}
14780E:  ADD             R7, SP, #8
147810:  MOV             R4, R0
147812:  LDR             R0, =(off_234C70 - 0x14781A)
147814:  LDR             R1, [R4]
147816:  ADD             R0, PC; off_234C70
147818:  LDR             R2, =(sub_14759C+1 - 0x147820)
14781A:  LDR             R3, [R1,#0x5C]
14781C:  ADD             R2, PC; sub_14759C
14781E:  LDR             R1, [R0]; unk_23C7E8
147820:  MOV             R0, R4
147822:  BLX             R3
147824:  LDR             R0, =(off_234C74 - 0x14782C)
147826:  LDR             R1, [R4]
147828:  ADD             R0, PC; off_234C74
14782A:  LDR             R2, =(sub_146C48+1 - 0x147832)
14782C:  LDR             R3, [R1,#0x5C]
14782E:  ADD             R2, PC; sub_146C48
147830:  LDR             R1, [R0]; unk_23C91C
147832:  MOV             R0, R4
147834:  BLX             R3
147836:  LDR             R0, =(off_234C78 - 0x14783E)
147838:  LDR             R1, [R4]
14783A:  ADD             R0, PC; off_234C78
14783C:  LDR             R2, =(sub_146D88+1 - 0x147844)
14783E:  LDR             R3, [R1,#0x5C]
147840:  ADD             R2, PC; sub_146D88
147842:  LDR             R1, [R0]; unk_23C920
147844:  MOV             R0, R4
147846:  BLX             R3
147848:  LDR             R0, =(off_234C7C - 0x147850)
14784A:  LDR             R1, [R4]
14784C:  ADD             R0, PC; off_234C7C
14784E:  LDR             R2, =(sub_146DF8+1 - 0x147856)
147850:  LDR             R3, [R1,#0x5C]
147852:  ADD             R2, PC; sub_146DF8
147854:  LDR             R1, [R0]; unk_23C7EC
147856:  MOV             R0, R4
147858:  BLX             R3
14785A:  LDR             R0, =(off_234C80 - 0x147862)
14785C:  LDR             R1, [R4]
14785E:  ADD             R0, PC; off_234C80
147860:  LDR             R2, =(sub_145AF4+1 - 0x147868)
147862:  LDR             R3, [R1,#0x5C]
147864:  ADD             R2, PC; sub_145AF4
147866:  LDR             R1, [R0]; unk_23C7D8
147868:  MOV             R0, R4
14786A:  BLX             R3
14786C:  LDR             R0, =(off_234C84 - 0x147874)
14786E:  LDR             R1, [R4]
147870:  ADD             R0, PC; off_234C84
147872:  LDR             R2, =(sub_146EDC+1 - 0x14787A)
147874:  LDR             R3, [R1,#0x5C]
147876:  ADD             R2, PC; sub_146EDC
147878:  LDR             R1, [R0]; unk_23C77C
14787A:  MOV             R0, R4
14787C:  BLX             R3
14787E:  LDR             R0, =(off_234C88 - 0x147886)
147880:  LDR             R1, [R4]
147882:  ADD             R0, PC; off_234C88
147884:  LDR             R2, =(sub_146F6C+1 - 0x14788C)
147886:  LDR             R3, [R1,#0x5C]
147888:  ADD             R2, PC; sub_146F6C
14788A:  LDR             R1, [R0]; unk_23C780
14788C:  MOV             R0, R4
14788E:  BLX             R3
147890:  LDR             R0, =(off_234C8C - 0x147898)
147892:  LDR             R1, [R4]
147894:  ADD             R0, PC; off_234C8C
147896:  LDR             R2, =(sub_146F80+1 - 0x14789E)
147898:  LDR             R3, [R1,#0x5C]
14789A:  ADD             R2, PC; sub_146F80
14789C:  LDR             R1, [R0]; unk_23C784
14789E:  MOV             R0, R4
1478A0:  BLX             R3
1478A2:  LDR             R0, =(off_234C90 - 0x1478AA)
1478A4:  LDR             R1, [R4]
1478A6:  ADD             R0, PC; off_234C90
1478A8:  LDR             R2, =(sub_14703C+1 - 0x1478B0)
1478AA:  LDR             R3, [R1,#0x5C]
1478AC:  ADD             R2, PC; sub_14703C
1478AE:  LDR             R1, [R0]; unk_23C788
1478B0:  MOV             R0, R4
1478B2:  BLX             R3
1478B4:  LDR             R0, =(off_234C58 - 0x1478BC)
1478B6:  LDR             R1, [R4]
1478B8:  ADD             R0, PC; off_234C58
1478BA:  LDR             R2, =(sub_146ADC+1 - 0x1478C2)
1478BC:  LDR             R3, [R1,#0x5C]
1478BE:  ADD             R2, PC; sub_146ADC
1478C0:  LDR             R1, [R0]; unk_23C78C
1478C2:  MOV             R0, R4
1478C4:  BLX             R3
1478C6:  LDR             R0, =(off_234C94 - 0x1478CE)
1478C8:  LDR             R1, [R4]
1478CA:  ADD             R0, PC; off_234C94
1478CC:  LDR             R2, =(sub_14660C+1 - 0x1478D4)
1478CE:  LDR             R3, [R1,#0x5C]
1478D0:  ADD             R2, PC; sub_14660C
1478D2:  LDR             R1, [R0]; unk_23C790
1478D4:  MOV             R0, R4
1478D6:  BLX             R3
1478D8:  LDR             R0, =(off_234C98 - 0x1478E0)
1478DA:  LDR             R1, [R4]
1478DC:  ADD             R0, PC; off_234C98
1478DE:  LDR             R2, =(sub_146458+1 - 0x1478E6)
1478E0:  LDR             R3, [R1,#0x5C]
1478E2:  ADD             R2, PC; sub_146458
1478E4:  LDR             R1, [R0]; unk_23C794
1478E6:  MOV             R0, R4
1478E8:  BLX             R3
1478EA:  LDR             R0, =(off_234C9C - 0x1478F2)
1478EC:  LDR             R1, [R4]
1478EE:  ADD             R0, PC; off_234C9C
1478F0:  LDR             R2, =(sub_145F44+1 - 0x1478F8)
1478F2:  LDR             R3, [R1,#0x5C]
1478F4:  ADD             R2, PC; sub_145F44
1478F6:  LDR             R1, [R0]; unk_23C798
1478F8:  MOV             R0, R4
1478FA:  BLX             R3
1478FC:  LDR             R0, =(off_234CA0 - 0x147904)
1478FE:  LDR             R1, [R4]
147900:  ADD             R0, PC; off_234CA0
147902:  LDR             R2, =(sub_146400+1 - 0x14790A)
147904:  LDR             R3, [R1,#0x5C]
147906:  ADD             R2, PC; sub_146400
147908:  LDR             R1, [R0]; unk_23C79C
14790A:  MOV             R0, R4
14790C:  BLX             R3
14790E:  LDR             R0, =(off_234CA4 - 0x147916)
147910:  LDR             R1, [R4]
147912:  ADD             R0, PC; off_234CA4
147914:  LDR             R2, =(sub_146B8C+1 - 0x14791C)
147916:  LDR             R3, [R1,#0x5C]
147918:  ADD             R2, PC; sub_146B8C
14791A:  LDR             R1, [R0]; unk_23C7A0
14791C:  MOV             R0, R4
14791E:  BLX             R3
147920:  LDR             R0, =(off_234CA8 - 0x147928)
147922:  LDR             R1, [R4]
147924:  ADD             R0, PC; off_234CA8
147926:  LDR             R2, =(sub_146BF0+1 - 0x14792E)
147928:  LDR             R3, [R1,#0x5C]
14792A:  ADD             R2, PC; sub_146BF0
14792C:  LDR             R1, [R0]; unk_23C7A4
14792E:  MOV             R0, R4
147930:  BLX             R3
147932:  LDR             R0, =(off_234CAC - 0x14793A)
147934:  LDR             R1, [R4]
147936:  ADD             R0, PC; off_234CAC
147938:  LDR             R2, =(sub_146398+1 - 0x147940)
14793A:  LDR             R3, [R1,#0x5C]
14793C:  ADD             R2, PC; sub_146398
14793E:  LDR             R1, [R0]; unk_23C7A8
147940:  MOV             R0, R4
147942:  BLX             R3
147944:  LDR             R0, =(off_234CB0 - 0x14794C)
147946:  LDR             R1, [R4]
147948:  ADD             R0, PC; off_234CB0
14794A:  LDR             R2, =(sub_146314+1 - 0x147952)
14794C:  LDR             R3, [R1,#0x5C]
14794E:  ADD             R2, PC; sub_146314
147950:  LDR             R1, [R0]; unk_23C7AC
147952:  MOV             R0, R4
147954:  BLX             R3
147956:  LDR             R0, =(off_234CB4 - 0x14795E)
147958:  LDR             R1, [R4]
14795A:  ADD             R0, PC; off_234CB4
14795C:  LDR             R2, =(sub_1462A0+1 - 0x147964)
14795E:  LDR             R3, [R1,#0x5C]
147960:  ADD             R2, PC; sub_1462A0
147962:  LDR             R1, [R0]; unk_23C7B0
147964:  MOV             R0, R4
147966:  BLX             R3
147968:  LDR             R0, =(off_234CB8 - 0x147970)
14796A:  LDR             R1, [R4]
14796C:  ADD             R0, PC; off_234CB8
14796E:  LDR             R2, =(sub_146A88+1 - 0x147976)
147970:  LDR             R3, [R1,#0x5C]
147972:  ADD             R2, PC; sub_146A88
147974:  LDR             R1, [R0]; unk_23C7C4
147976:  MOV             R0, R4
147978:  BLX             R3
14797A:  LDR             R0, =(off_234CBC - 0x147982)
14797C:  LDR             R1, [R4]
14797E:  ADD             R0, PC; off_234CBC
147980:  LDR             R2, =(sub_146788+1 - 0x147988)
147982:  LDR             R3, [R1,#0x5C]
147984:  ADD             R2, PC; sub_146788
147986:  LDR             R1, [R0]; unk_23C768
147988:  MOV             R0, R4
14798A:  BLX             R3
14798C:  LDR             R0, =(off_234CC0 - 0x147994)
14798E:  LDR             R1, [R4]
147990:  ADD             R0, PC; off_234CC0
147992:  LDR             R2, =(sub_146A14+1 - 0x14799A)
147994:  LDR             R3, [R1,#0x5C]
147996:  ADD             R2, PC; sub_146A14
147998:  LDR             R1, [R0]; unk_23C76C
14799A:  MOV             R0, R4
14799C:  BLX             R3
14799E:  LDR             R0, =(off_234CC4 - 0x1479A6)
1479A0:  LDR             R1, [R4]
1479A2:  ADD             R0, PC; off_234CC4
1479A4:  LDR             R2, =(sub_146960+1 - 0x1479AC)
1479A6:  LDR             R3, [R1,#0x5C]
1479A8:  ADD             R2, PC; sub_146960
1479AA:  LDR             R1, [R0]; unk_23C770
1479AC:  MOV             R0, R4
1479AE:  BLX             R3
1479B0:  LDR             R0, =(off_234C24 - 0x1479B8)
1479B2:  LDR             R1, [R4]
1479B4:  ADD             R0, PC; off_234C24
1479B6:  LDR             R2, =(sub_147050+1 - 0x1479BE)
1479B8:  LDR             R3, [R1,#0x5C]
1479BA:  ADD             R2, PC; sub_147050
1479BC:  LDR             R1, [R0]; unk_23C760
1479BE:  MOV             R0, R4
1479C0:  BLX             R3
1479C2:  LDR             R0, =(off_234CC8 - 0x1479CA)
1479C4:  LDR             R1, [R4]
1479C6:  ADD             R0, PC; off_234CC8
1479C8:  LDR             R2, =(sub_147270+1 - 0x1479D0)
1479CA:  LDR             R3, [R1,#0x5C]
1479CC:  ADD             R2, PC; sub_147270
1479CE:  LDR             R1, [R0]; unk_23C7DC
1479D0:  MOV             R0, R4
1479D2:  BLX             R3
1479D4:  LDR             R0, =(off_234C38 - 0x1479DC)
1479D6:  LDR             R1, [R4]
1479D8:  ADD             R0, PC; off_234C38
1479DA:  LDR             R2, =(sub_147108+1 - 0x1479E2)
1479DC:  LDR             R3, [R1,#0x5C]
1479DE:  ADD             R2, PC; sub_147108
1479E0:  LDR             R1, [R0]; unk_23C758
1479E2:  MOV             R0, R4
1479E4:  BLX             R3
1479E6:  LDR             R0, =(off_234C40 - 0x1479EE)
1479E8:  LDR             R1, [R4]
1479EA:  ADD             R0, PC; off_234C40
1479EC:  LDR             R2, =(sub_1471D0+1 - 0x1479F4)
1479EE:  LDR             R3, [R1,#0x5C]
1479F0:  ADD             R2, PC; sub_1471D0
1479F2:  LDR             R1, [R0]; unk_23C75C
1479F4:  MOV             R0, R4
1479F6:  BLX             R3
1479F8:  LDR             R0, =(off_234CCC - 0x147A00)
1479FA:  LDR             R1, [R4]
1479FC:  ADD             R0, PC; off_234CCC
1479FE:  LDR             R2, =(sub_14661C+1 - 0x147A06)
147A00:  LDR             R3, [R1,#0x5C]
147A02:  ADD             R2, PC; sub_14661C
147A04:  LDR             R1, [R0]; unk_23C730
147A06:  MOV             R0, R4
147A08:  BLX             R3
147A0A:  LDR             R0, =(off_234CD0 - 0x147A12)
147A0C:  LDR             R1, [R4]
147A0E:  ADD             R0, PC; off_234CD0
147A10:  LDR             R2, =(sub_146704+1 - 0x147A18)
147A12:  LDR             R3, [R1,#0x5C]
147A14:  ADD             R2, PC; sub_146704
147A16:  LDR             R1, [R0]; unk_23C734
147A18:  MOV             R0, R4
147A1A:  BLX             R3
147A1C:  LDR             R0, =(off_234CD4 - 0x147A24)
147A1E:  LDR             R1, [R4]
147A20:  ADD             R0, PC; off_234CD4
147A22:  LDR             R2, =(sub_144C9C+1 - 0x147A2A)
147A24:  LDR             R3, [R1,#0x5C]
147A26:  ADD             R2, PC; sub_144C9C
147A28:  LDR             R1, [R0]; unk_23C738
147A2A:  MOV             R0, R4
147A2C:  BLX             R3
147A2E:  LDR             R0, =(off_234C60 - 0x147A36)
147A30:  LDR             R1, [R4]
147A32:  ADD             R0, PC; off_234C60
147A34:  LDR             R2, =(sub_145DA0+1 - 0x147A3C)
147A36:  LDR             R3, [R1,#0x5C]
147A38:  ADD             R2, PC; sub_145DA0
147A3A:  LDR             R1, [R0]; unk_23C754
147A3C:  MOV             R0, R4
147A3E:  BLX             R3
147A40:  LDR             R0, =(off_234C34 - 0x147A48)
147A42:  LDR             R1, [R4]
147A44:  ADD             R0, PC; off_234C34
147A46:  LDR             R2, =(sub_146148+1 - 0x147A4E)
147A48:  LDR             R3, [R1,#0x5C]
147A4A:  ADD             R2, PC; sub_146148
147A4C:  LDR             R1, [R0]; unk_23C744
147A4E:  MOV             R0, R4
147A50:  BLX             R3
147A52:  LDR             R0, =(off_234C3C - 0x147A5A)
147A54:  LDR             R1, [R4]
147A56:  ADD             R0, PC; off_234C3C
147A58:  LDR             R2, =(sub_1461D0+1 - 0x147A60)
147A5A:  LDR             R3, [R1,#0x5C]
147A5C:  ADD             R2, PC; sub_1461D0
147A5E:  LDR             R1, [R0]; unk_23C748
147A60:  MOV             R0, R4
147A62:  BLX             R3
147A64:  LDR             R0, =(off_234CD8 - 0x147A6C)
147A66:  LDR             R1, [R4]
147A68:  ADD             R0, PC; off_234CD8
147A6A:  LDR             R2, =(sub_147668+1 - 0x147A72)
147A6C:  LDR             R3, [R1,#0x5C]
147A6E:  ADD             R2, PC; sub_147668
147A70:  LDR             R1, [R0]; unk_23C7F8
147A72:  MOV             R0, R4
147A74:  BLX             R3
147A76:  LDR             R0, =(off_234CDC - 0x147A7E)
147A78:  LDR             R1, [R4]
147A7A:  ADD             R0, PC; off_234CDC
147A7C:  LDR             R2, =(sub_1476D0+1 - 0x147A84)
147A7E:  LDR             R3, [R1,#0x5C]
147A80:  ADD             R2, PC; sub_1476D0
147A82:  LDR             R1, [R0]; unk_23C7FC
147A84:  MOV             R0, R4
147A86:  BLX             R3
147A88:  LDR             R0, =(off_234CE0 - 0x147A90)
147A8A:  LDR             R1, [R4]
147A8C:  ADD             R0, PC; off_234CE0
147A8E:  LDR             R2, =(sub_14776C+1 - 0x147A96)
147A90:  LDR             R3, [R1,#0x5C]
147A92:  ADD             R2, PC; sub_14776C
147A94:  LDR             R1, [R0]; unk_23C800
147A96:  MOV             R0, R4
147A98:  BLX             R3
147A9A:  LDR             R0, =(off_234CE4 - 0x147AA2)
147A9C:  LDR             R1, [R4]
147A9E:  ADD             R0, PC; off_234CE4
147AA0:  LDR             R2, =(sub_1477B4+1 - 0x147AA8)
147AA2:  LDR             R3, [R1,#0x5C]
147AA4:  ADD             R2, PC; sub_1477B4
147AA6:  LDR             R1, [R0]; unk_23C804
147AA8:  MOV             R0, R4
147AAA:  BLX             R3
147AAC:  LDR             R0, =(off_234CE8 - 0x147AB4)
147AAE:  LDR             R1, [R4]
147AB0:  ADD             R0, PC; off_234CE8
147AB2:  LDR             R2, =(sub_146248+1 - 0x147ABA)
147AB4:  LDR             R3, [R1,#0x5C]
147AB6:  ADD             R2, PC; sub_146248
147AB8:  LDR             R1, [R0]; unk_23C7F0
147ABA:  MOV             R0, R4
147ABC:  BLX             R3
147ABE:  LDR             R0, =(off_234CEC - 0x147AC6)
147AC0:  LDR             R1, [R4]
147AC2:  ADD             R0, PC; off_234CEC
147AC4:  LDR             R2, =(sub_1474E0+1 - 0x147ACC)
147AC6:  LDR             R3, [R1,#0x5C]
147AC8:  ADD             R2, PC; sub_1474E0
147ACA:  LDR             R1, [R0]; unk_23C7E0
147ACC:  MOV             R0, R4
147ACE:  BLX             R3
147AD0:  LDR             R0, =(off_234CF0 - 0x147AD8)
147AD2:  LDR             R1, [R4]
147AD4:  ADD             R0, PC; off_234CF0
147AD6:  LDR             R2, =(sub_147540+1 - 0x147ADE)
147AD8:  LDR             R3, [R1,#0x5C]
147ADA:  ADD             R2, PC; sub_147540
147ADC:  LDR             R1, [R0]; unk_23C7E4
147ADE:  MOV             R0, R4
147AE0:  BLX             R3
147AE2:  LDR             R0, =(off_234CF4 - 0x147AEA)
147AE4:  LDR             R1, [R4]
147AE6:  ADD             R0, PC; off_234CF4
147AE8:  LDR             R2, =(sub_145574+1 - 0x147AF0)
147AEA:  LDR             R3, [R1,#0x5C]
147AEC:  ADD             R2, PC; sub_145574
147AEE:  LDR             R1, [R0]; unk_23C774
147AF0:  MOV             R0, R4
147AF2:  BLX             R3
147AF4:  LDR             R0, =(off_234CF8 - 0x147AFC)
147AF6:  LDR             R1, [R4]
147AF8:  ADD             R0, PC; off_234CF8
147AFA:  LDR             R2, =(sub_145708+1 - 0x147B02)
147AFC:  LDR             R3, [R1,#0x5C]
147AFE:  ADD             R2, PC; sub_145708
147B00:  LDR             R1, [R0]; unk_23C84C
147B02:  MOV             R0, R4
147B04:  BLX             R3
147B06:  LDR             R0, =(off_234CFC - 0x147B0E)
147B08:  LDR             R1, [R4]
147B0A:  ADD             R0, PC; off_234CFC
147B0C:  LDR             R2, =(sub_1457B4+1 - 0x147B14)
147B0E:  LDR             R3, [R1,#0x5C]
147B10:  ADD             R2, PC; sub_1457B4
147B12:  LDR             R1, [R0]; unk_23C778
147B14:  MOV             R0, R4
147B16:  BLX             R3
147B18:  LDR             R0, =(off_234D00 - 0x147B20)
147B1A:  LDR             R1, [R4]
147B1C:  ADD             R0, PC; off_234D00
147B1E:  LDR             R2, =(sub_1459BC+1 - 0x147B26)
147B20:  LDR             R3, [R1,#0x5C]
147B22:  ADD             R2, PC; sub_1459BC
147B24:  LDR             R1, [R0]; unk_23C764
147B26:  MOV             R0, R4
147B28:  BLX             R3
147B2A:  LDR             R0, =(off_234D04 - 0x147B34)
147B2C:  LDR             R3, [R4]
147B2E:  LDR             R2, =(sub_145A40+1 - 0x147B38)
147B30:  ADD             R0, PC; off_234D04
147B32:  LDR             R1, [R0]; unk_23C8C8
147B34:  ADD             R2, PC; sub_145A40
147B36:  LDR             R3, [R3,#0x5C]
147B38:  MOV             R0, R4
147B3A:  POP.W           {R4,R6,R7,LR}
147B3E:  BX              R3
