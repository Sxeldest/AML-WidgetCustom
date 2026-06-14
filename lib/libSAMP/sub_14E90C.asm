; =========================================================
; Game Engine Function: sub_14E90C
; Address            : 0x14E90C - 0x14F012
; =========================================================

14E90C:  PUSH            {R4,R6,R7,LR}
14E90E:  ADD             R7, SP, #8
14E910:  LDR             R1, =(aAxl - 0x14E91C); "AXL" ...
14E912:  MOV             R4, R0
14E914:  LDR             R2, =(aRegisteringScr - 0x14E91E); "Registering script RPC's.." ...
14E916:  MOVS            R0, #4; prio
14E918:  ADD             R1, PC; "AXL"
14E91A:  ADD             R2, PC; "Registering script RPC's.."
14E91C:  BLX             __android_log_print
14E920:  LDR             R0, =(off_234D0C - 0x14E928)
14E922:  LDR             R1, [R4]
14E924:  ADD             R0, PC; off_234D0C
14E926:  LDR             R2, =(sub_14C5C0+1 - 0x14E92E)
14E928:  LDR             R3, [R1,#0x5C]
14E92A:  ADD             R2, PC; sub_14C5C0
14E92C:  LDR             R1, [R0]; unk_23C87C
14E92E:  MOV             R0, R4
14E930:  BLX             R3
14E932:  LDR             R0, =(off_234D10 - 0x14E93A)
14E934:  LDR             R1, [R4]
14E936:  ADD             R0, PC; off_234D10
14E938:  LDR             R2, =(sub_14C680+1 - 0x14E940)
14E93A:  LDR             R3, [R1,#0x5C]
14E93C:  ADD             R2, PC; sub_14C680
14E93E:  LDR             R1, [R0]; unk_23C880
14E940:  MOV             R0, R4
14E942:  BLX             R3
14E944:  LDR             R0, =(off_234D14 - 0x14E94C)
14E946:  LDR             R1, [R4]
14E948:  ADD             R0, PC; off_234D14
14E94A:  LDR             R2, =(sub_14CD3C+1 - 0x14E952)
14E94C:  LDR             R3, [R1,#0x5C]
14E94E:  ADD             R2, PC; sub_14CD3C
14E950:  LDR             R1, [R0]; unk_23C884
14E952:  MOV             R0, R4
14E954:  BLX             R3
14E956:  LDR             R0, =(off_234D18 - 0x14E95E)
14E958:  LDR             R1, [R4]
14E95A:  ADD             R0, PC; off_234D18
14E95C:  LDR             R2, =(sub_14B980+1 - 0x14E964)
14E95E:  LDR             R3, [R1,#0x5C]
14E960:  ADD             R2, PC; sub_14B980
14E962:  LDR             R1, [R0]; unk_23C888
14E964:  MOV             R0, R4
14E966:  BLX             R3
14E968:  LDR             R0, =(off_234D1C - 0x14E970)
14E96A:  LDR             R1, [R4]
14E96C:  ADD             R0, PC; off_234D1C
14E96E:  LDR             R2, =(sub_14CDAC+1 - 0x14E976)
14E970:  LDR             R3, [R1,#0x5C]
14E972:  ADD             R2, PC; sub_14CDAC
14E974:  LDR             R1, [R0]; unk_23C88C
14E976:  MOV             R0, R4
14E978:  BLX             R3
14E97A:  LDR             R0, =(off_234D20 - 0x14E982)
14E97C:  LDR             R1, [R4]
14E97E:  ADD             R0, PC; off_234D20
14E980:  LDR             R2, =(sub_14CE2C+1 - 0x14E988)
14E982:  LDR             R3, [R1,#0x5C]
14E984:  ADD             R2, PC; sub_14CE2C
14E986:  LDR             R1, [R0]; unk_23C890
14E988:  MOV             R0, R4
14E98A:  BLX             R3
14E98C:  LDR             R0, =(off_234D24 - 0x14E994)
14E98E:  LDR             R1, [R4]
14E990:  ADD             R0, PC; off_234D24
14E992:  LDR             R2, =(sub_14CEDC+1 - 0x14E99A)
14E994:  LDR             R3, [R1,#0x5C]
14E996:  ADD             R2, PC; sub_14CEDC
14E998:  LDR             R1, [R0]; unk_23C894
14E99A:  MOV             R0, R4
14E99C:  BLX             R3
14E99E:  LDR             R0, =(off_234D28 - 0x14E9A6)
14E9A0:  LDR             R1, [R4]
14E9A2:  ADD             R0, PC; off_234D28
14E9A4:  LDR             R2, =(sub_14BF28+1 - 0x14E9AC)
14E9A6:  LDR             R3, [R1,#0x5C]
14E9A8:  ADD             R2, PC; sub_14BF28
14E9AA:  LDR             R1, [R0]; unk_23C898
14E9AC:  MOV             R0, R4
14E9AE:  BLX             R3
14E9B0:  LDR             R0, =(off_234D2C - 0x14E9B8)
14E9B2:  LDR             R1, [R4]
14E9B4:  ADD             R0, PC; off_234D2C
14E9B6:  LDR             R2, =(sub_14CF58+1 - 0x14E9BE)
14E9B8:  LDR             R3, [R1,#0x5C]
14E9BA:  ADD             R2, PC; sub_14CF58
14E9BC:  LDR             R1, [R0]; unk_23C89C
14E9BE:  MOV             R0, R4
14E9C0:  BLX             R3
14E9C2:  LDR             R0, =(off_234D30 - 0x14E9CA)
14E9C4:  LDR             R1, [R4]
14E9C6:  ADD             R0, PC; off_234D30
14E9C8:  LDR             R2, =(sub_14D004+1 - 0x14E9D0)
14E9CA:  LDR             R3, [R1,#0x5C]
14E9CC:  ADD             R2, PC; sub_14D004
14E9CE:  LDR             R1, [R0]; unk_23C8A0
14E9D0:  MOV             R0, R4
14E9D2:  BLX             R3
14E9D4:  LDR             R0, =(off_234D34 - 0x14E9DC)
14E9D6:  LDR             R1, [R4]
14E9D8:  ADD             R0, PC; off_234D34
14E9DA:  LDR             R2, =(sub_14C168+1 - 0x14E9E2)
14E9DC:  LDR             R3, [R1,#0x5C]
14E9DE:  ADD             R2, PC; sub_14C168
14E9E0:  LDR             R1, [R0]; unk_23C8A4
14E9E2:  MOV             R0, R4
14E9E4:  BLX             R3
14E9E6:  LDR             R0, =(off_234D38 - 0x14E9EE)
14E9E8:  LDR             R1, [R4]
14E9EA:  ADD             R0, PC; off_234D38
14E9EC:  LDR             R2, =(sub_14D0A0+1 - 0x14E9F4)
14E9EE:  LDR             R3, [R1,#0x5C]
14E9F0:  ADD             R2, PC; sub_14D0A0
14E9F2:  LDR             R1, [R0]; unk_23C8A8
14E9F4:  MOV             R0, R4
14E9F6:  BLX             R3
14E9F8:  LDR             R0, =(off_234D3C - 0x14EA00)
14E9FA:  LDR             R1, [R4]
14E9FC:  ADD             R0, PC; off_234D3C
14E9FE:  LDR             R2, =(sub_14C6D0+1 - 0x14EA06)
14EA00:  LDR             R3, [R1,#0x5C]
14EA02:  ADD             R2, PC; sub_14C6D0
14EA04:  LDR             R1, [R0]; unk_23C8AC
14EA06:  MOV             R0, R4
14EA08:  BLX             R3
14EA0A:  LDR             R0, =(off_234D40 - 0x14EA12)
14EA0C:  LDR             R1, [R4]
14EA0E:  ADD             R0, PC; off_234D40
14EA10:  LDR             R2, =(sub_14E79C+1 - 0x14EA18)
14EA12:  LDR             R3, [R1,#0x5C]
14EA14:  ADD             R2, PC; sub_14E79C
14EA16:  LDR             R1, [R0]; unk_23C8B0
14EA18:  MOV             R0, R4
14EA1A:  BLX             R3
14EA1C:  LDR             R0, =(off_234D44 - 0x14EA24)
14EA1E:  LDR             R1, [R4]
14EA20:  ADD             R0, PC; off_234D44
14EA22:  LDR             R2, =(sub_14E89C+1 - 0x14EA2A)
14EA24:  LDR             R3, [R1,#0x5C]
14EA26:  ADD             R2, PC; sub_14E89C
14EA28:  LDR             R1, [R0]; unk_23C8B4
14EA2A:  MOV             R0, R4
14EA2C:  BLX             R3
14EA2E:  LDR             R0, =(off_234D48 - 0x14EA36)
14EA30:  LDR             R1, [R4]
14EA32:  ADD             R0, PC; off_234D48
14EA34:  LDR             R2, =(sub_14D14C+1 - 0x14EA3C)
14EA36:  LDR             R3, [R1,#0x5C]
14EA38:  ADD             R2, PC; sub_14D14C
14EA3A:  LDR             R1, [R0]; unk_23C8B8
14EA3C:  MOV             R0, R4
14EA3E:  BLX             R3
14EA40:  LDR             R0, =(off_234D4C - 0x14EA48)
14EA42:  LDR             R1, [R4]
14EA44:  ADD             R0, PC; off_234D4C
14EA46:  LDR             R2, =(sub_14BC7C+1 - 0x14EA4E)
14EA48:  LDR             R3, [R1,#0x5C]
14EA4A:  ADD             R2, PC; sub_14BC7C
14EA4C:  LDR             R1, [R0]; unk_23C8BC
14EA4E:  MOV             R0, R4
14EA50:  BLX             R3
14EA52:  LDR             R0, =(off_234D50 - 0x14EA5A)
14EA54:  LDR             R1, [R4]
14EA56:  ADD             R0, PC; off_234D50
14EA58:  LDR             R2, =(sub_14D1E8+1 - 0x14EA60)
14EA5A:  LDR             R3, [R1,#0x5C]
14EA5C:  ADD             R2, PC; sub_14D1E8
14EA5E:  LDR             R1, [R0]; unk_23C8C0
14EA60:  MOV             R0, R4
14EA62:  BLX             R3
14EA64:  LDR             R0, =(off_234D54 - 0x14EA6C)
14EA66:  LDR             R1, [R4]
14EA68:  ADD             R0, PC; off_234D54
14EA6A:  LDR             R2, =(sub_14D26C+1 - 0x14EA72)
14EA6C:  LDR             R3, [R1,#0x5C]
14EA6E:  ADD             R2, PC; sub_14D26C
14EA70:  LDR             R1, [R0]; unk_23C8C4
14EA72:  MOV             R0, R4
14EA74:  BLX             R3
14EA76:  LDR             R0, =(off_234D58 - 0x14EA7E)
14EA78:  LDR             R1, [R4]
14EA7A:  ADD             R0, PC; off_234D58
14EA7C:  LDR             R2, =(sub_14D2F0+1 - 0x14EA84)
14EA7E:  LDR             R3, [R1,#0x5C]
14EA80:  ADD             R2, PC; sub_14D2F0
14EA82:  LDR             R1, [R0]; unk_23C8CC
14EA84:  MOV             R0, R4
14EA86:  BLX             R3
14EA88:  LDR             R0, =(off_234D5C - 0x14EA90)
14EA8A:  LDR             R1, [R4]
14EA8C:  ADD             R0, PC; off_234D5C
14EA8E:  LDR             R2, =(sub_14D494+1 - 0x14EA96)
14EA90:  LDR             R3, [R1,#0x5C]
14EA92:  ADD             R2, PC; sub_14D494
14EA94:  LDR             R1, [R0]; unk_23C8D0
14EA96:  MOV             R0, R4
14EA98:  BLX             R3
14EA9A:  LDR             R0, =(off_234D60 - 0x14EAA2)
14EA9C:  LDR             R1, [R4]
14EA9E:  ADD             R0, PC; off_234D60
14EAA0:  LDR             R2, =(sub_14CB08+1 - 0x14EAA8)
14EAA2:  LDR             R3, [R1,#0x5C]
14EAA4:  ADD             R2, PC; sub_14CB08
14EAA6:  LDR             R1, [R0]; unk_23C8D4
14EAA8:  MOV             R0, R4
14EAAA:  BLX             R3
14EAAC:  LDR             R0, =(off_234D64 - 0x14EAB4)
14EAAE:  LDR             R1, [R4]
14EAB0:  ADD             R0, PC; off_234D64
14EAB2:  LDR             R2, =(sub_14CBA8+1 - 0x14EABA)
14EAB4:  LDR             R3, [R1,#0x5C]
14EAB6:  ADD             R2, PC; sub_14CBA8
14EAB8:  LDR             R1, [R0]; unk_23C8D8
14EABA:  MOV             R0, R4
14EABC:  BLX             R3
14EABE:  LDR             R0, =(off_234D68 - 0x14EAC6)
14EAC0:  LDR             R1, [R4]
14EAC2:  ADD             R0, PC; off_234D68
14EAC4:  LDR             R2, =(sub_14CC08+1 - 0x14EACC)
14EAC6:  LDR             R3, [R1,#0x5C]
14EAC8:  ADD             R2, PC; sub_14CC08
14EACA:  LDR             R1, [R0]; unk_23C8DC
14EACC:  MOV             R0, R4
14EACE:  BLX             R3
14EAD0:  LDR             R0, =(off_234D6C - 0x14EAD8)
14EAD2:  LDR             R1, [R4]
14EAD4:  ADD             R0, PC; off_234D6C
14EAD6:  LDR             R2, =(sub_14BD4C+1 - 0x14EADE)
14EAD8:  LDR             R3, [R1,#0x5C]
14EADA:  ADD             R2, PC; sub_14BD4C
14EADC:  LDR             R1, [R0]; unk_23C8E0
14EADE:  MOV             R0, R4
14EAE0:  BLX             R3
14EAE2:  LDR             R0, =(off_234D70 - 0x14EAEA)
14EAE4:  LDR             R1, [R4]
14EAE6:  ADD             R0, PC; off_234D70
14EAE8:  LDR             R2, =(sub_14BDFC+1 - 0x14EAF0)
14EAEA:  LDR             R3, [R1,#0x5C]
14EAEC:  ADD             R2, PC; sub_14BDFC
14EAEE:  LDR             R1, [R0]; unk_23C8E4
14EAF0:  MOV             R0, R4
14EAF2:  BLX             R3
14EAF4:  LDR             R0, =(off_234D74 - 0x14EAFC)
14EAF6:  LDR             R1, [R4]
14EAF8:  ADD             R0, PC; off_234D74
14EAFA:  LDR             R2, =(sub_14BE5C+1 - 0x14EB02)
14EAFC:  LDR             R3, [R1,#0x5C]
14EAFE:  ADD             R2, PC; sub_14BE5C
14EB00:  LDR             R1, [R0]; unk_23C8E8
14EB02:  MOV             R0, R4
14EB04:  BLX             R3
14EB06:  LDR             R0, =(off_234D78 - 0x14EB0E)
14EB08:  LDR             R1, [R4]
14EB0A:  ADD             R0, PC; off_234D78
14EB0C:  LDR             R2, =(sub_14BEC8+1 - 0x14EB14)
14EB0E:  LDR             R3, [R1,#0x5C]
14EB10:  ADD             R2, PC; sub_14BEC8
14EB12:  LDR             R1, [R0]; unk_23C8EC
14EB14:  MOV             R0, R4
14EB16:  BLX             R3
14EB18:  LDR             R0, =(off_234D7C - 0x14EB20)
14EB1A:  LDR             R1, [R4]
14EB1C:  ADD             R0, PC; off_234D7C
14EB1E:  LDR             R2, =(sub_14C754+1 - 0x14EB26)
14EB20:  LDR             R3, [R1,#0x5C]
14EB22:  ADD             R2, PC; sub_14C754
14EB24:  LDR             R1, [R0]; unk_23C8F0
14EB26:  MOV             R0, R4
14EB28:  BLX             R3
14EB2A:  LDR             R0, =(off_234D80 - 0x14EB32)
14EB2C:  LDR             R1, [R4]
14EB2E:  ADD             R0, PC; off_234D80
14EB30:  LDR             R2, =(sub_14C930+1 - 0x14EB38)
14EB32:  LDR             R3, [R1,#0x5C]
14EB34:  ADD             R2, PC; sub_14C930
14EB36:  LDR             R1, [R0]; unk_23C8F4
14EB38:  MOV             R0, R4
14EB3A:  BLX             R3
14EB3C:  LDR             R0, =(off_234D84 - 0x14EB44)
14EB3E:  LDR             R1, [R4]
14EB40:  ADD             R0, PC; off_234D84
14EB42:  LDR             R2, =(sub_14D4E8+1 - 0x14EB4A)
14EB44:  LDR             R3, [R1,#0x5C]
14EB46:  ADD             R2, PC; sub_14D4E8
14EB48:  LDR             R1, [R0]; unk_23C900
14EB4A:  MOV             R0, R4
14EB4C:  BLX             R3
14EB4E:  LDR             R0, =(off_234D88 - 0x14EB56)
14EB50:  LDR             R1, [R4]
14EB52:  ADD             R0, PC; off_234D88
14EB54:  LDR             R2, =(sub_14D548+1 - 0x14EB5C)
14EB56:  LDR             R3, [R1,#0x5C]
14EB58:  ADD             R2, PC; sub_14D548
14EB5A:  LDR             R1, [R0]; unk_23C904
14EB5C:  MOV             R0, R4
14EB5E:  BLX             R3
14EB60:  LDR             R0, =(off_234D8C - 0x14EB68)
14EB62:  LDR             R1, [R4]
14EB64:  ADD             R0, PC; off_234D8C
14EB66:  LDR             R2, =(sub_14D5A4+1 - 0x14EB6E)
14EB68:  LDR             R3, [R1,#0x5C]
14EB6A:  ADD             R2, PC; sub_14D5A4
14EB6C:  LDR             R1, [R0]; unk_23C908
14EB6E:  MOV             R0, R4
14EB70:  BLX             R3
14EB72:  LDR             R0, =(off_234D90 - 0x14EB7A)
14EB74:  LDR             R1, [R4]
14EB76:  ADD             R0, PC; off_234D90
14EB78:  LDR             R2, =(sub_14D644+1 - 0x14EB80)
14EB7A:  LDR             R3, [R1,#0x5C]
14EB7C:  ADD             R2, PC; sub_14D644
14EB7E:  LDR             R1, [R0]; unk_23C90C
14EB80:  MOV             R0, R4
14EB82:  BLX             R3
14EB84:  LDR             R0, =(off_234D94 - 0x14EB8C)
14EB86:  LDR             R1, [R4]
14EB88:  ADD             R0, PC; off_234D94
14EB8A:  LDR             R2, =(sub_14D6D8+1 - 0x14EB92)
14EB8C:  LDR             R3, [R1,#0x5C]
14EB8E:  ADD             R2, PC; sub_14D6D8
14EB90:  LDR             R1, [R0]; unk_23C910
14EB92:  MOV             R0, R4
14EB94:  BLX             R3
14EB96:  LDR             R0, =(off_234D98 - 0x14EB9E)
14EB98:  LDR             R1, [R4]
14EB9A:  ADD             R0, PC; off_234D98
14EB9C:  LDR             R2, =(sub_14D7DC+1 - 0x14EBA4)
14EB9E:  LDR             R3, [R1,#0x5C]
14EBA0:  ADD             R2, PC; sub_14D7DC
14EBA2:  LDR             R1, [R0]; unk_23C914
14EBA4:  MOV             R0, R4
14EBA6:  BLX             R3
14EBA8:  LDR             R0, =(off_234D9C - 0x14EBB0)
14EBAA:  LDR             R1, [R4]
14EBAC:  ADD             R0, PC; off_234D9C
14EBAE:  LDR             R2, =(sub_14D828+1 - 0x14EBB6)
14EBB0:  LDR             R3, [R1,#0x5C]
14EBB2:  ADD             R2, PC; sub_14D828
14EBB4:  LDR             R1, [R0]; unk_23C934
14EBB6:  MOV             R0, R4
14EBB8:  BLX             R3
14EBBA:  LDR             R0, =(off_234DA0 - 0x14EBC2)
14EBBC:  LDR             R1, [R4]
14EBBE:  ADD             R0, PC; off_234DA0
14EBC0:  LDR             R2, =(sub_14BCF4+1 - 0x14EBC8)
14EBC2:  LDR             R3, [R1,#0x5C]
14EBC4:  ADD             R2, PC; sub_14BCF4
14EBC6:  LDR             R1, [R0]; unk_23C80C
14EBC8:  MOV             R0, R4
14EBCA:  BLX             R3
14EBCC:  LDR             R0, =(off_234DA4 - 0x14EBD4)
14EBCE:  LDR             R1, [R4]
14EBD0:  ADD             R0, PC; off_234DA4
14EBD2:  LDR             R2, =(sub_14D8AC+1 - 0x14EBDA)
14EBD4:  LDR             R3, [R1,#0x5C]
14EBD6:  ADD             R2, PC; sub_14D8AC
14EBD8:  LDR             R1, [R0]; unk_23C810
14EBDA:  MOV             R0, R4
14EBDC:  BLX             R3
14EBDE:  LDR             R0, =(off_234DA8 - 0x14EBE6)
14EBE0:  LDR             R1, [R4]
14EBE2:  ADD             R0, PC; off_234DA8
14EBE4:  LDR             R2, =(sub_14C4E4+1 - 0x14EBEC)
14EBE6:  LDR             R3, [R1,#0x5C]
14EBE8:  ADD             R2, PC; sub_14C4E4
14EBEA:  LDR             R1, [R0]; unk_23C814
14EBEC:  MOV             R0, R4
14EBEE:  BLX             R3
14EBF0:  LDR             R0, =(off_234DAC - 0x14EBF8)
14EBF2:  LDR             R1, [R4]
14EBF4:  ADD             R0, PC; off_234DAC
14EBF6:  LDR             R2, =(sub_14D944+1 - 0x14EBFE)
14EBF8:  LDR             R3, [R1,#0x5C]
14EBFA:  ADD             R2, PC; sub_14D944
14EBFC:  LDR             R1, [R0]; unk_23C818
14EBFE:  MOV             R0, R4
14EC00:  BLX             R3
14EC02:  LDR             R0, =(off_234DB0 - 0x14EC0A)
14EC04:  LDR             R1, [R4]
14EC06:  ADD             R0, PC; off_234DB0
14EC08:  LDR             R2, =(sub_14DA14+1 - 0x14EC10)
14EC0A:  LDR             R3, [R1,#0x5C]
14EC0C:  ADD             R2, PC; sub_14DA14
14EC0E:  LDR             R1, [R0]; unk_23C81C
14EC10:  MOV             R0, R4
14EC12:  BLX             R3
14EC14:  LDR             R0, =(off_234DB4 - 0x14EC1C)
14EC16:  LDR             R1, [R4]
14EC18:  ADD             R0, PC; off_234DB4
14EC1A:  LDR             R2, =(sub_14DA9C+1 - 0x14EC22)
14EC1C:  LDR             R3, [R1,#0x5C]
14EC1E:  ADD             R2, PC; sub_14DA9C
14EC20:  LDR             R1, [R0]; unk_23C820
14EC22:  MOV             R0, R4
14EC24:  BLX             R3
14EC26:  LDR             R0, =(off_234DB8 - 0x14EC2E)
14EC28:  LDR             R1, [R4]
14EC2A:  ADD             R0, PC; off_234DB8
14EC2C:  LDR             R2, =(sub_14C9E8+1 - 0x14EC34)
14EC2E:  LDR             R3, [R1,#0x5C]
14EC30:  ADD             R2, PC; sub_14C9E8
14EC32:  LDR             R1, [R0]; unk_23C824
14EC34:  MOV             R0, R4
14EC36:  BLX             R3
14EC38:  LDR             R0, =(off_234DBC - 0x14EC40)
14EC3A:  LDR             R1, [R4]
14EC3C:  ADD             R0, PC; off_234DBC
14EC3E:  LDR             R2, =(sub_14DB48+1 - 0x14EC46)
14EC40:  LDR             R3, [R1,#0x5C]
14EC42:  ADD             R2, PC; sub_14DB48
14EC44:  LDR             R1, [R0]; unk_23C828
14EC46:  MOV             R0, R4
14EC48:  BLX             R3
14EC4A:  LDR             R0, =(off_234DC0 - 0x14EC52)
14EC4C:  LDR             R1, [R4]
14EC4E:  ADD             R0, PC; off_234DC0
14EC50:  LDR             R2, =(sub_14DC08+1 - 0x14EC58)
14EC52:  LDR             R3, [R1,#0x5C]
14EC54:  ADD             R2, PC; sub_14DC08
14EC56:  LDR             R1, [R0]; unk_23C82C
14EC58:  MOV             R0, R4
14EC5A:  BLX             R3
14EC5C:  LDR             R0, =(off_234DC4 - 0x14EC64)
14EC5E:  LDR             R1, [R4]
14EC60:  ADD             R0, PC; off_234DC4
14EC62:  LDR             R2, =(sub_14DC2C+1 - 0x14EC6A)
14EC64:  LDR             R3, [R1,#0x5C]
14EC66:  ADD             R2, PC; sub_14DC2C
14EC68:  LDR             R1, [R0]; unk_23C830
14EC6A:  MOV             R0, R4
14EC6C:  BLX             R3
14EC6E:  LDR             R0, =(off_234DC8 - 0x14EC76)
14EC70:  LDR             R1, [R4]
14EC72:  ADD             R0, PC; off_234DC8
14EC74:  LDR             R2, =(sub_14DCC8+1 - 0x14EC7C)
14EC76:  LDR             R3, [R1,#0x5C]
14EC78:  ADD             R2, PC; sub_14DCC8
14EC7A:  LDR             R1, [R0]; unk_23C834
14EC7C:  MOV             R0, R4
14EC7E:  BLX             R3
14EC80:  LDR             R0, =(off_234DCC - 0x14EC88)
14EC82:  LDR             R1, [R4]
14EC84:  ADD             R0, PC; off_234DCC
14EC86:  LDR             R2, =(sub_14CAB0+1 - 0x14EC8E)
14EC88:  LDR             R3, [R1,#0x5C]
14EC8A:  ADD             R2, PC; sub_14CAB0
14EC8C:  LDR             R1, [R0]; unk_23C838
14EC8E:  MOV             R0, R4
14EC90:  BLX             R3
14EC92:  LDR             R0, =(off_234DD0 - 0x14EC9A)
14EC94:  LDR             R1, [R4]
14EC96:  ADD             R0, PC; off_234DD0
14EC98:  LDR             R2, =(sub_14B9D0+1 - 0x14ECA0)
14EC9A:  LDR             R3, [R1,#0x5C]
14EC9C:  ADD             R2, PC; sub_14B9D0
14EC9E:  LDR             R1, [R0]; unk_23C83C
14ECA0:  MOV             R0, R4
14ECA2:  BLX             R3
14ECA4:  LDR             R0, =(off_234DD4 - 0x14ECAC)
14ECA6:  LDR             R1, [R4]
14ECA8:  ADD             R0, PC; off_234DD4
14ECAA:  LDR             R2, =(sub_14BA48+1 - 0x14ECB2)
14ECAC:  LDR             R3, [R1,#0x5C]
14ECAE:  ADD             R2, PC; sub_14BA48
14ECB0:  LDR             R1, [R0]; unk_23C840
14ECB2:  MOV             R0, R4
14ECB4:  BLX             R3
14ECB6:  LDR             R0, =(off_234DD8 - 0x14ECBE)
14ECB8:  LDR             R1, [R4]
14ECBA:  ADD             R0, PC; off_234DD8
14ECBC:  LDR             R2, =(sub_14DD58+1 - 0x14ECC4)
14ECBE:  LDR             R3, [R1,#0x5C]
14ECC0:  ADD             R2, PC; sub_14DD58
14ECC2:  LDR             R1, [R0]; unk_23C844
14ECC4:  MOV             R0, R4
14ECC6:  BLX             R3
14ECC8:  LDR             R0, =(off_234DDC - 0x14ECD0)
14ECCA:  LDR             R1, [R4]
14ECCC:  ADD             R0, PC; off_234DDC
14ECCE:  LDR             R2, =(sub_14DDF8+1 - 0x14ECD6)
14ECD0:  LDR             R3, [R1,#0x5C]
14ECD2:  ADD             R2, PC; sub_14DDF8
14ECD4:  LDR             R1, [R0]; unk_23C848
14ECD6:  MOV             R0, R4
14ECD8:  BLX             R3
14ECDA:  LDR             R0, =(off_234DE0 - 0x14ECE2)
14ECDC:  LDR             R1, [R4]
14ECDE:  ADD             R0, PC; off_234DE0
14ECE0:  LDR             R2, =(sub_14DE78+1 - 0x14ECE8)
14ECE2:  LDR             R3, [R1,#0x5C]
14ECE4:  ADD             R2, PC; sub_14DE78
14ECE6:  LDR             R1, [R0]; unk_23C850
14ECE8:  MOV             R0, R4
14ECEA:  BLX             R3
14ECEC:  LDR             R0, =(off_234DE4 - 0x14ECF4)
14ECEE:  LDR             R1, [R4]
14ECF0:  ADD             R0, PC; off_234DE4
14ECF2:  LDR             R2, =(sub_14DE8C+1 - 0x14ECFA)
14ECF4:  LDR             R3, [R1,#0x5C]
14ECF6:  ADD             R2, PC; sub_14DE8C
14ECF8:  LDR             R1, [R0]; unk_23C854
14ECFA:  MOV             R0, R4
14ECFC:  BLX             R3
14ECFE:  LDR             R0, =(off_234DE8 - 0x14EE66)
14ED00:  B.W             loc_14EE60
14ED04:  DCD aAxl - 0x14E91C
14ED08:  DCD aRegisteringScr - 0x14E91E
14ED0C:  DCD off_234D0C - 0x14E928
14ED10:  DCD sub_14C5C0+1 - 0x14E92E
14ED14:  DCD off_234D10 - 0x14E93A
14ED18:  DCD sub_14C680+1 - 0x14E940
14ED1C:  DCD off_234D14 - 0x14E94C
14ED20:  DCD sub_14CD3C+1 - 0x14E952
14ED24:  DCD off_234D18 - 0x14E95E
14ED28:  DCD sub_14B980+1 - 0x14E964
14ED2C:  DCD off_234D1C - 0x14E970
14ED30:  DCD sub_14CDAC+1 - 0x14E976
14ED34:  DCD off_234D20 - 0x14E982
14ED38:  DCD sub_14CE2C+1 - 0x14E988
14ED3C:  DCD off_234D24 - 0x14E994
14ED40:  DCD sub_14CEDC+1 - 0x14E99A
14ED44:  DCD off_234D28 - 0x14E9A6
14ED48:  DCD sub_14BF28+1 - 0x14E9AC
14ED4C:  DCD off_234D2C - 0x14E9B8
14ED50:  DCD sub_14CF58+1 - 0x14E9BE
14ED54:  DCD off_234D30 - 0x14E9CA
14ED58:  DCD sub_14D004+1 - 0x14E9D0
14ED5C:  DCD off_234D34 - 0x14E9DC
14ED60:  DCD sub_14C168+1 - 0x14E9E2
14ED64:  DCD off_234D38 - 0x14E9EE
14ED68:  DCD sub_14D0A0+1 - 0x14E9F4
14ED6C:  DCD off_234D3C - 0x14EA00
14ED70:  DCD sub_14C6D0+1 - 0x14EA06
14ED74:  DCD off_234D40 - 0x14EA12
14ED78:  DCD sub_14E79C+1 - 0x14EA18
14ED7C:  DCD off_234D44 - 0x14EA24
14ED80:  DCD sub_14E89C+1 - 0x14EA2A
14ED84:  DCD off_234D48 - 0x14EA36
14ED88:  DCD sub_14D14C+1 - 0x14EA3C
14ED8C:  DCD off_234D4C - 0x14EA48
14ED90:  DCD sub_14BC7C+1 - 0x14EA4E
14ED94:  DCD off_234D50 - 0x14EA5A
14ED98:  DCD sub_14D1E8+1 - 0x14EA60
14ED9C:  DCD off_234D54 - 0x14EA6C
14EDA0:  DCD sub_14D26C+1 - 0x14EA72
14EDA4:  DCD off_234D58 - 0x14EA7E
14EDA8:  DCD sub_14D2F0+1 - 0x14EA84
14EDAC:  DCD off_234D5C - 0x14EA90
14EDB0:  DCD sub_14D494+1 - 0x14EA96
14EDB4:  DCD off_234D60 - 0x14EAA2
14EDB8:  DCD sub_14CB08+1 - 0x14EAA8
14EDBC:  DCD off_234D64 - 0x14EAB4
14EDC0:  DCD sub_14CBA8+1 - 0x14EABA
14EDC4:  DCD off_234D68 - 0x14EAC6
14EDC8:  DCD sub_14CC08+1 - 0x14EACC
14EDCC:  DCD off_234D6C - 0x14EAD8
14EDD0:  DCD sub_14BD4C+1 - 0x14EADE
14EDD4:  DCD off_234D70 - 0x14EAEA
14EDD8:  DCD sub_14BDFC+1 - 0x14EAF0
14EDDC:  DCD off_234D74 - 0x14EAFC
14EDE0:  DCD sub_14BE5C+1 - 0x14EB02
14EDE4:  DCD off_234D78 - 0x14EB0E
14EDE8:  DCD sub_14BEC8+1 - 0x14EB14
14EDEC:  DCD off_234D7C - 0x14EB20
14EDF0:  DCD sub_14C754+1 - 0x14EB26
14EDF4:  DCD off_234D80 - 0x14EB32
14EDF8:  DCD sub_14C930+1 - 0x14EB38
14EDFC:  DCD off_234D84 - 0x14EB44
14EE00:  DCD sub_14D4E8+1 - 0x14EB4A
14EE04:  DCD off_234D88 - 0x14EB56
14EE08:  DCD sub_14D548+1 - 0x14EB5C
14EE0C:  DCD off_234D8C - 0x14EB68
14EE10:  DCD sub_14D5A4+1 - 0x14EB6E
14EE14:  DCD off_234D90 - 0x14EB7A
14EE18:  DCD sub_14D644+1 - 0x14EB80
14EE1C:  DCD off_234D94 - 0x14EB8C
14EE20:  DCD sub_14D6D8+1 - 0x14EB92
14EE24:  DCD off_234D98 - 0x14EB9E
14EE28:  DCD sub_14D7DC+1 - 0x14EBA4
14EE2C:  DCD off_234D9C - 0x14EBB0
14EE30:  DCD sub_14D828+1 - 0x14EBB6
14EE34:  DCD off_234DA0 - 0x14EBC2
14EE38:  DCD sub_14BCF4+1 - 0x14EBC8
14EE3C:  DCD off_234DA4 - 0x14EBD4
14EE40:  DCD sub_14D8AC+1 - 0x14EBDA
14EE44:  DCD off_234DA8 - 0x14EBE6
14EE48:  DCD sub_14C4E4+1 - 0x14EBEC
14EE4C:  DCD off_234DAC - 0x14EBF8
14EE50:  DCD sub_14D944+1 - 0x14EBFE
14EE54:  DCD off_234DB0 - 0x14EC0A
14EE58:  DCD sub_14DA14+1 - 0x14EC10
14EE5C:  DCD off_234DB4 - 0x14EC1C
14EE60:  LDR             R1, [R4]
14EE62:  ADD             R0, PC; off_234DE8
14EE64:  LDR             R2, =(sub_14DEE8+1 - 0x14EE6C)
14EE66:  LDR             R3, [R1,#0x5C]
14EE68:  ADD             R2, PC; sub_14DEE8
14EE6A:  LDR             R1, [R0]; unk_23C858
14EE6C:  MOV             R0, R4
14EE6E:  BLX             R3
14EE70:  LDR             R0, =(off_234DEC - 0x14EE78)
14EE72:  LDR             R1, [R4]
14EE74:  ADD             R0, PC; off_234DEC
14EE76:  LDR             R2, =(sub_14DF48+1 - 0x14EE7E)
14EE78:  LDR             R3, [R1,#0x5C]
14EE7A:  ADD             R2, PC; sub_14DF48
14EE7C:  LDR             R1, [R0]; unk_23C85C
14EE7E:  MOV             R0, R4
14EE80:  BLX             R3
14EE82:  LDR             R0, =(off_234DF0 - 0x14EE8A)
14EE84:  LDR             R1, [R4]
14EE86:  ADD             R0, PC; off_234DF0
14EE88:  LDR             R2, =(sub_14DFC8+1 - 0x14EE90)
14EE8A:  LDR             R3, [R1,#0x5C]
14EE8C:  ADD             R2, PC; sub_14DFC8
14EE8E:  LDR             R1, [R0]; unk_23C860
14EE90:  MOV             R0, R4
14EE92:  BLX             R3
14EE94:  LDR             R0, =(off_234DF4 - 0x14EE9C)
14EE96:  LDR             R1, [R4]
14EE98:  ADD             R0, PC; off_234DF4
14EE9A:  LDR             R2, =(sub_14E018+1 - 0x14EEA2)
14EE9C:  LDR             R3, [R1,#0x5C]
14EE9E:  ADD             R2, PC; sub_14E018
14EEA0:  LDR             R1, [R0]; unk_23C864
14EEA2:  MOV             R0, R4
14EEA4:  BLX             R3
14EEA6:  LDR             R0, =(off_234DF8 - 0x14EEAE)
14EEA8:  LDR             R1, [R4]
14EEAA:  ADD             R0, PC; off_234DF8
14EEAC:  LDR             R2, =(sub_14E06C+1 - 0x14EEB4)
14EEAE:  LDR             R3, [R1,#0x5C]
14EEB0:  ADD             R2, PC; sub_14E06C
14EEB2:  LDR             R1, [R0]; unk_23C868
14EEB4:  MOV             R0, R4
14EEB6:  BLX             R3
14EEB8:  LDR             R0, =(off_234DFC - 0x14EEC0)
14EEBA:  LDR             R1, [R4]
14EEBC:  ADD             R0, PC; off_234DFC
14EEBE:  LDR             R2, =(sub_14E07C+1 - 0x14EEC6)
14EEC0:  LDR             R3, [R1,#0x5C]
14EEC2:  ADD             R2, PC; sub_14E07C
14EEC4:  LDR             R1, [R0]; unk_23C86C
14EEC6:  MOV             R0, R4
14EEC8:  BLX             R3
14EECA:  LDR             R0, =(off_234E00 - 0x14EED2)
14EECC:  LDR             R1, [R4]
14EECE:  ADD             R0, PC; off_234E00
14EED0:  LDR             R2, =(sub_14CA44+1 - 0x14EED8)
14EED2:  LDR             R3, [R1,#0x5C]
14EED4:  ADD             R2, PC; sub_14CA44
14EED6:  LDR             R1, [R0]; unk_23C870
14EED8:  MOV             R0, R4
14EEDA:  BLX             R3
14EEDC:  LDR             R0, =(off_234E04 - 0x14EEE4)
14EEDE:  LDR             R1, [R4]
14EEE0:  ADD             R0, PC; off_234E04
14EEE2:  LDR             R2, =(sub_14E09C+1 - 0x14EEEA)
14EEE4:  LDR             R3, [R1,#0x5C]
14EEE6:  ADD             R2, PC; sub_14E09C
14EEE8:  LDR             R1, [R0]; unk_23C874
14EEEA:  MOV             R0, R4
14EEEC:  BLX             R3
14EEEE:  LDR             R0, =(off_234E08 - 0x14EEF6)
14EEF0:  LDR             R1, [R4]
14EEF2:  ADD             R0, PC; off_234E08
14EEF4:  LDR             R2, =(sub_14E108+1 - 0x14EEFC)
14EEF6:  LDR             R3, [R1,#0x5C]
14EEF8:  ADD             R2, PC; sub_14E108
14EEFA:  LDR             R1, [R0]; unk_23C878
14EEFC:  MOV             R0, R4
14EEFE:  BLX             R3
14EF00:  LDR             R0, =(off_234E0C - 0x14EF08)
14EF02:  LDR             R1, [R4]
14EF04:  ADD             R0, PC; off_234E0C
14EF06:  LDR             R2, =(sub_14E164+1 - 0x14EF0E)
14EF08:  LDR             R3, [R1,#0x5C]
14EF0A:  ADD             R2, PC; sub_14E164
14EF0C:  LDR             R1, [R0]; unk_23C918
14EF0E:  MOV             R0, R4
14EF10:  BLX             R3
14EF12:  LDR             R0, =(off_234E10 - 0x14EF1A)
14EF14:  LDR             R1, [R4]
14EF16:  ADD             R0, PC; off_234E10
14EF18:  LDR             R2, =(sub_14E1C0+1 - 0x14EF20)
14EF1A:  LDR             R3, [R1,#0x5C]
14EF1C:  ADD             R2, PC; sub_14E1C0
14EF1E:  LDR             R1, [R0]; unk_23C938
14EF20:  MOV             R0, R4
14EF22:  BLX             R3
14EF24:  LDR             R0, =(off_234E14 - 0x14EF2C)
14EF26:  LDR             R1, [R4]
14EF28:  ADD             R0, PC; off_234E14
14EF2A:  LDR             R2, =(sub_14E220+1 - 0x14EF32)
14EF2C:  LDR             R3, [R1,#0x5C]
14EF2E:  ADD             R2, PC; sub_14E220
14EF30:  LDR             R1, [R0]; unk_23C808
14EF32:  MOV             R0, R4
14EF34:  BLX             R3
14EF36:  LDR             R0, =(off_234E18 - 0x14EF3E)
14EF38:  LDR             R1, [R4]
14EF3A:  ADD             R0, PC; off_234E18
14EF3C:  LDR             R2, =(sub_14E6B8+1 - 0x14EF44)
14EF3E:  LDR             R3, [R1,#0x5C]
14EF40:  ADD             R2, PC; sub_14E6B8
14EF42:  LDR             R1, [R0]; unk_23C948
14EF44:  MOV             R0, R4
14EF46:  BLX             R3
14EF48:  LDR             R0, =(off_234E1C - 0x14EF50)
14EF4A:  LDR             R1, [R4]
14EF4C:  ADD             R0, PC; off_234E1C
14EF4E:  LDR             R2, =(sub_14E780+1 - 0x14EF56)
14EF50:  LDR             R3, [R1,#0x5C]
14EF52:  ADD             R2, PC; sub_14E780
14EF54:  LDR             R1, [R0]; unk_23C94C
14EF56:  MOV             R0, R4
14EF58:  BLX             R3
14EF5A:  LDR             R0, =(off_234E20 - 0x14EF62)
14EF5C:  LDR             R1, [R4]
14EF5E:  ADD             R0, PC; off_234E20
14EF60:  LDR             R2, =(sub_14C464+1 - 0x14EF68)
14EF62:  LDR             R3, [R1,#0x5C]
14EF64:  ADD             R2, PC; sub_14C464
14EF66:  LDR             R1, [R0]; unk_23C92C
14EF68:  MOV             R0, R4
14EF6A:  BLX             R3
14EF6C:  LDR             R0, =(off_234E24 - 0x14EF74)
14EF6E:  LDR             R1, [R4]
14EF70:  ADD             R0, PC; off_234E24
14EF72:  LDR             R2, =(sub_14BADC+1 - 0x14EF7A)
14EF74:  LDR             R3, [R1,#0x5C]
14EF76:  ADD             R2, PC; sub_14BADC
14EF78:  LDR             R1, [R0]; unk_23C924
14EF7A:  MOV             R0, R4
14EF7C:  BLX             R3
14EF7E:  LDR             R0, =(off_234E28 - 0x14EF86)
14EF80:  LDR             R1, [R4]
14EF82:  ADD             R0, PC; off_234E28
14EF84:  LDR             R2, =(sub_14BB64+1 - 0x14EF8C)
14EF86:  LDR             R3, [R1,#0x5C]
14EF88:  ADD             R2, PC; sub_14BB64
14EF8A:  LDR             R1, [R0]; unk_23C928
14EF8C:  MOV             R0, R4
14EF8E:  BLX             R3
14EF90:  LDR             R0, =(off_234E2C - 0x14EF98)
14EF92:  LDR             R1, [R4]
14EF94:  ADD             R0, PC; off_234E2C
14EF96:  LDR             R2, =(sub_14CCB4+1 - 0x14EF9E)
14EF98:  LDR             R3, [R1,#0x5C]
14EF9A:  ADD             R2, PC; sub_14CCB4
14EF9C:  LDR             R1, [R0]; unk_23C7C8
14EF9E:  MOV             R0, R4
14EFA0:  BLX             R3
14EFA2:  LDR             R0, =(off_234E30 - 0x14EFAA)
14EFA4:  LDR             R1, [R4]
14EFA6:  ADD             R0, PC; off_234E30
14EFA8:  LDR             R2, =(sub_14C1F4+1 - 0x14EFB0)
14EFAA:  LDR             R3, [R1,#0x5C]
14EFAC:  ADD             R2, PC; sub_14C1F4
14EFAE:  LDR             R1, [R0]; unk_23C930
14EFB0:  MOV             R0, R4
14EFB2:  BLX             R3
14EFB4:  LDR             R0, =(off_234E34 - 0x14EFBC)
14EFB6:  LDR             R1, [R4]
14EFB8:  ADD             R0, PC; off_234E34
14EFBA:  LDR             R2, =(sub_14E314+1 - 0x14EFC2)
14EFBC:  LDR             R3, [R1,#0x5C]
14EFBE:  ADD             R2, PC; sub_14E314
14EFC0:  LDR             R1, [R0]; unk_23C8F8
14EFC2:  MOV             R0, R4
14EFC4:  BLX             R3
14EFC6:  LDR             R0, =(off_234E38 - 0x14EFCE)
14EFC8:  LDR             R1, [R4]
14EFCA:  ADD             R0, PC; off_234E38
14EFCC:  LDR             R2, =(sub_14E4A8+1 - 0x14EFD4)
14EFCE:  LDR             R3, [R1,#0x5C]
14EFD0:  ADD             R2, PC; sub_14E4A8
14EFD2:  LDR             R1, [R0]; unk_23C8FC
14EFD4:  MOV             R0, R4
14EFD6:  BLX             R3
14EFD8:  LDR             R0, =(off_234E3C - 0x14EFE0)
14EFDA:  LDR             R1, [R4]
14EFDC:  ADD             R0, PC; off_234E3C
14EFDE:  LDR             R2, =(sub_14E518+1 - 0x14EFE6)
14EFE0:  LDR             R3, [R1,#0x5C]
14EFE2:  ADD             R2, PC; sub_14E518
14EFE4:  LDR             R1, [R0]; unk_23C93C
14EFE6:  MOV             R0, R4
14EFE8:  BLX             R3
14EFEA:  LDR             R0, =(off_234E40 - 0x14EFF2)
14EFEC:  LDR             R1, [R4]
14EFEE:  ADD             R0, PC; off_234E40
14EFF0:  LDR             R2, =(sub_14E598+1 - 0x14EFF8)
14EFF2:  LDR             R3, [R1,#0x5C]
14EFF4:  ADD             R2, PC; sub_14E598
14EFF6:  LDR             R1, [R0]; unk_23C940
14EFF8:  MOV             R0, R4
14EFFA:  BLX             R3
14EFFC:  LDR             R0, =(off_234E44 - 0x14F006)
14EFFE:  LDR             R3, [R4]
14F000:  LDR             R2, =(sub_14E638+1 - 0x14F00A)
14F002:  ADD             R0, PC; off_234E44
14F004:  LDR             R1, [R0]; unk_23C944
14F006:  ADD             R2, PC; sub_14E638
14F008:  LDR             R3, [R3,#0x5C]
14F00A:  MOV             R0, R4
14F00C:  POP.W           {R4,R6,R7,LR}
14F010:  BX              R3
