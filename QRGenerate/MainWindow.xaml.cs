using QRCoder;
using System;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Windows;
using System.Windows.Input;
using System.Windows.Media.Imaging;

namespace QRGenerate
{
    public partial class MainWindow : Window, INotifyPropertyChanged
    {
        #region ToCopy

        public string tc = "";
        private ConvertCommand mc;
        private ObservableCollection<string> ls;

        public event PropertyChangedEventHandler PropertyChanged;

        public string ToCode { get => tc; set { tc = value; PropertyChanged?.Invoke(this, new PropertyChangedEventArgs("ToCode")); } }

        public ConvertCommand MyConverter { get => mc; }

        #endregion ToCopy

        public ObservableCollection<string> MyList { get => ls; }

        public MainWindow()
        {
            InitializeComponent();
            VoidDelegate d = Submit;
            mc = new ConvertCommand(d);
            ls = new ObservableCollection<string>();
            ls.CollectionChanged += Reload;
            Reload(null, null);
            DataContext = this;
        }

        private void Reload(object sender, System.Collections.Specialized.NotifyCollectionChangedEventArgs e)
        {
            lb.ItemsSource = null;
            lb.ItemsSource = MyList;
        }

        private void SubmitTrigger(object sender, RoutedEventArgs e)
        {
            Submit();
        }

        public delegate void VoidDelegate();

        private void Submit()
        {
            if (ls.ContainsAt(ToCode, out int k)) ls.Move(k, 0);
            else ls.Insert(0, ToCode);
            Reload(null, null);
            QRCodeGenerator qrcode = new QRCodeGenerator();
            QRCodeData data = qrcode.CreateQrCode(ToCode, QRCodeGenerator.ECCLevel.Q);
            QRCode code = new QRCode(data);
            BitmapSource ss = System.Windows.Interop.Imaging.CreateBitmapSourceFromHBitmap(
                code.GetGraphic(5).GetHbitmap(),
                IntPtr.Zero,
                Int32Rect.Empty,
                BitmapSizeOptions.FromWidthAndHeight((int)view.Width, (int)view.Height)
           );
            view.Source = ss;
        }

        private void ClipboardPaste(object sender, RoutedEventArgs e)
        {
        }

        public class ConvertCommand : ICommand
        {
            private readonly VoidDelegate d;

            public event EventHandler CanExecuteChanged;

            public ConvertCommand(VoidDelegate d)
            {
                this.d = d;
            }

            public bool CanExecute(object parameter)
            {
                return true;
            }

            public void Execute(object parameter)
            {
                try
                {
                    d();
                }
                catch
                {
                }
            }
        }

        private void Minimise(object sender, MouseButtonEventArgs e)
        {
            WindowState = WindowState.Minimized;
        }

        private void Close(object sender, MouseButtonEventArgs e)
        {
            Close();
        }

        private void MoveWindow(object sender, MouseEventArgs e)
        {
            if (e.LeftButton == MouseButtonState.Pressed)
            {
                DragMove();
            }
        }

        private void EditInTextBox(object sender, MouseButtonEventArgs e)
        {
            try
            {
                ToCode = (string)lb.SelectedItem;
                Submit();
            }
            catch
            {
            }
        }

        private void EditAndGenerate(object sender, MouseButtonEventArgs e)
        {
            EditInTextBox(null, null);
        }

        private void SelectionChangedHandler(object sender, System.Windows.Controls.SelectionChangedEventArgs e)
        {
            var s = 1;
        }
    }

    public static class Generic
    {
        public static bool ContainsAt(this ObservableCollection<string> s, string item, out int index)
        {
            index = -1;
            if (s == null) return false;
            for (int i = 0; i < s.Count; i++)
            {
                if (s[i] == item)
                {
                    index = i;
                    return true;
                }
            }
            return false;
        }
    }
}