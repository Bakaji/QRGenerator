   M S B A M L   `   `   `  ���� E  AQRGenerate, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:QRGenerate
QRGenerate      QRGenerate.MainWindow   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     U QMaterialDesignThemes.Wpf, Version=2.6.0.325, Culture=neutral, PublicKeyToken=null:md1http://materialdesigninxaml.net/winfx/xaml/themes  $localclr-namespace:QRGenerate    � WindowStyle$
  None=� � WindowStartupLocation$ CenterScreen=� � 
ResizeMode$ NoResize=� � Title$ 
MainWindow��$	��600��$	��800��$	��800��$	��600�� J� InputBindings ��  �� Gesture$ 	Control+S�� �� Command �� *MyConverter+ � 	Resources    	MainColor �� Color  SelectionColor  	SecoColor��%W   &	        &	      &	 (     �� $ #002060���� $ 	#55002060���� $ White��.��� 	 � ColumnDefinitions	 �� $��* ��� $	��300 �
 � RowDefinitions
 �� $��40 ��� $��70 ��� $��* �.+��� -   $��2��#��[  $��0 0 0 1q�._�� #��[  	 �� $��* ��� $
��auto �.+��� $��Text to QR Generator��#��[ $��18(�$��15 0 0 0q��� $��1�� �� Orientation$ 
Horizontal=�.+��� -    � Cursor$
 Hand��$��Center=�$��0q�$��0 0 15 0q�.��'  !MaterialDesignThemes.Wpf.PackIcon  �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.6.0.325, Culture=neutral, PublicKeyToken=null]]   Kind$ Minus=�$��25��$��25��#��[ �� -   $
 Hand��$��Center=�$��0q�$��0 0 5 0q�.��  $ WindowClose=�$��25��$��25��#��[ �� )  #MaterialDesignThemes.Wpf.HintAssist   Hint$" Type or paste clipboard here��$��1��$��Center=�$��Center=�$��40��$��18(�#��[  $��15 0 0 0q����� *ToCode+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�.�� �� $ 	Control+S�� �� *MyConverter+.���� -   $	��cls��$��1��#��[  $��1��$	��170��$��10q�$��Generate��� $��2��
 �� $��40 ��� $��* �.+��� .+��� $��15 0 0 0q�$��QR Code��$��Center=�$
��Left=�#��[  $��18(�$��0 0 0 2q�#��[  �� -   $
��view��$��1��$	��400��$	��400��� $��2��$��2��
 �� $��40 ��� $��* �.+��� $��
Clips list��$
��Left=�$��15 0 0 0q�$��Center=�#��[  $��18(�$��0 0 0 2q�#��[  �� -   $��lb��  ListSSSS#��[ $��1������  �� 
TargetType" ��  MaterialDesignListBoxItem �� BasedOn# [ .���  �� Property �@��
IsSelected �� Value �� $ TwoWay=� �� Path$ 
IsSelected���  � ��$ 0q���  � ��$ Stretch=���  � ��$ Stretch=���  � ��$ Stretch=���  � ��$ Stretch=��� +  %MaterialDesignThemes.Wpf.RippleAssist �@ 
IsDisabled .  �� Triggers P�  P� Property �@��
IsSelected P� Value . . ���  � ��# [ ��  � ��
 ��������� .R�� $��40��	 �� $��* ��� $��20 ��� $��20 �.+��� $��Center=�#��[  ���� ���� " �� ��  �� Binding �� *
IsSelected+ �� RelativeSource ��  �� AncestorType$ ListBoxItemL� �� Value True.a���  � ��
 � � �  -   $��1��$
 Hand��$��Center=� � ToolTip$ Edit in text field��$ Pencil=�$��15��$��15��#��[    -   $��2��$��Center=�$"  Edit in text field Generate��$ SubdirectoryArrowRight=�$��15��$��15��#��[  $
 Hand��