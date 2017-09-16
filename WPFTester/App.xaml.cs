using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using System.Windows;

namespace WPFTester
{
   /// <summary>
   /// Interaction logic for App.xaml
   /// </summary>
   public partial class App : Application
   {

      /// <summary>
      /// Display the Main Window
      /// </summary>
      private void AppStartup(object sender, StartupEventArgs e)
      {
         View.MainWindow mw = new View.MainWindow();
         mw.DataContext = ViewModel.Session.Instance;
         mw.Show();
      }

      /// <summary>
      /// Global exception handler, used as fallback when local exceptions are missed
      /// </summary>
      private void Application_DispatcherUnhandledException(object sender, System.Windows.Threading.DispatcherUnhandledExceptionEventArgs e)
      {
         MessageBox.Show("An unhandled exception just occurred: " + e.Exception.Message, "DispatcherUnhandledException from App.xaml.cs", MessageBoxButton.OK, MessageBoxImage.Warning);
         e.Handled = true;
      }

   }
}
