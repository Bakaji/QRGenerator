   M S B A M L   `   `   `  ����E  AQRGenerate, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:QRGenerate
QRGenerate  5   	       QRGenerate.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   U QMaterialDesignThemes.Wpf, Version=2.6.0.325, Culture=neutral, PublicKeyToken=null:md1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   $localclr-namespace:QRGenerate  5   	     � WindowStyle$
  None=�5	   	    � WindowStartupLocation$ CenterScreen=�5
   	    � 
ResizeMode$ NoResize=�5   	    � Title$ 
MainWindow��5   	   $	��600��6   $	��800��6)   $	��800��65   $	��600��6D    J� InputBindings 5      �� 5   
    �� Gesture$ 	Control+S��6    �� Command 6*   �� *MyConverter+ � 	Resources 5         	MainColor �� Color  SelectionColor  	SecoColor��%�   &	        &	 &     &	 N     �� 5   
   $ #002060��6,   6>   �� 5   
   $ 	#55002060��61   6E   �� 5   
   $ White��6,   6<   5      .��5      � 	 � ColumnDefinitions	 5   
   �� 5      $��* �6   �� 5      $	��300 �6   
 � RowDefinitions
 5   
   �� 5      $��40 �6   �� 5      $��70 �6   �� 5      $��* �6   .+�5   
   �� -   5        $��2��5      #��[  6%   $��0 0 0 1q�6N   ._�5       � #��[  6   	 5!      �� 5"      $��* �6'   �� 5#      $
��auto �6'   .+�5%      �� $��Text to QR Generator��6   #��[ 67   $��18(�6_   $��15 0 0 0q�6m   6�   �� 5&      $��1��6    �� Orientation$ 
Horizontal=�6-   .+�5'      �� -   5         � Cursor$
 Hand��5'      $��Center=�6G   $��0q�6i   $��0 0 15 0q�6u   .��5(      '  !MaterialDesignThemes.Wpf.PackIcon  �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.6.0.325, Culture=neutral, PublicKeyToken=null]]   Kind$ Minus=�6&   $��25��63   $��25��6?   #��[ 6J   5)      �� 5*      -   5        $
 Hand��5*      $��Center=�6F   $��0q�6h   $��0 0 5 0q�6t   .��5+        $ WindowClose=�6&   $��25��69   $��25��6E   #��[ 6P   5,      5-      5.      5/      �� 50   
   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$" Type or paste clipboard here��6   $��1��6D   $��Center=�6Q   $��Center=�6s   $��40��6�   $��18(�6�   #��[  6�   $��15 0 0 0q�6  ��6�   �� *ToCode+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�.��6*   51      �� 52      $ 	Control+S��6    62   �� *MyConverter+.��53   %   54      �� 55   
   -   5        $	��cls��55      $��1��6   #��[  6*   $��1��6h   $	��170��6y   $��10q�6�   $��Generate��6�   6�   � 56   
   $��2��6   
 57      �� 58      $��40 �6    �� 59      $��* �6    .+�5<      �� .+�5=      �� $��15 0 0 0q�6   $��QR Code��6*   $��Center=�6<   $
��Left=�6W   #��[  6r   $��18(�6�   $��0 0 0 2q�6�   #��[  6�   5>      �� 5@      -   5        $
��view��5@   !   $��1��6   $	��400��6-   $	��400��6:   6I   5A      � 5B   
   $��2��6   $��2��6   
 5C      �� 5D      $��40 �6    �� 5E      $��* �6    .+�5G      �� $��
Clips list��6   $
��Left=�6)   $��15 0 0 0q�6D   $��Center=�6V   #��[  6q   $��18(�6�   $��0 0 0 2q�6�   #��[  6�   6�   �� 5H      -   5        $��lb��5H        ListSSSS#��[ 6K   $��1��6m   ��5I      �� 5J       �� 
TargetType" ��6     MaterialDesignListBoxItem �� BasedOn# [ 6>   .�5K      ��  �� Property �@��
IsSelected �� Value 67   �� $ TwoWay=� �� Path$ 
IsSelected��� 5L       � ��$ 0q�6<   �� 5M       � ��$ Stretch=�6G   �� 5N       � ��$ Stretch=�6E   �� 5O       � ��$ Stretch=�6@   �� 5P       � ��$ Stretch=�6>   �� 5R      +  %MaterialDesignThemes.Wpf.RippleAssist �@ 
IsDisabled . 6G    �� Triggers 5S      P� 5T       P� Property �@��
IsSelected P� Value . . �5U   "   ��  � ��# [ 6?   �� 5V   "    � ��
 �����6?   5W      5Y      ��5[      �� 5\      .R�5]      � $��40��6   	 5^      �� 5_   "   $��* �63   �� 5`   "   $��20 �63   �� 5a   "   $��20 �63   .+�5c      �� $��Center=�68   #��[  6S   ��6$   �� ��5d   "   �� 5e   &   " ��6,    5f   *   �� 5g   .    �� Binding 6:   �� *
IsSelected+ �� RelativeSource ��  �� AncestorType$ ListBoxItemL� �� Value True6�   .a�5h   2   ��  � ��
 � � �6_   5i   /   5k   '   5m        5n      -   5        $��1��5n   *   $
 Hand��6:   $��Center=�6H    � ToolTip$ Edit in text field��6c   $ Pencil=�6�   $��15��6�   $��15��6�   #��[  6�   6�     5o      -   5        $��2��5o   *   $��Center=�6:   $"  Edit in text field Generate��6U   $ SubdirectoryArrowRight=�6|   $��15��6�   $��15��6�   #��[  6�   $
 Hand��6�   5p      5q      5s      5t      5u      5v      