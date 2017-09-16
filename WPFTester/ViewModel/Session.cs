using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.ComponentModel;    //for iNotifyPropertyChanged
using WPFTester.Model;
using WPFTester.View;
using System.Windows.Input; // ICommand
using System.Windows;

namespace WPFTester.ViewModel
{
   public sealed class Session : INotifyPropertyChanged
   {
      #region Instance Variables
      private readonly GenModel gmodel;
      private static object lockObj = new object();
      private static volatile Session instance;
      public static Session Instance
      {
         get
         {
            if (instance == null)
            {
               lock (lockObj)
               {
                  if (instance == null)
                     instance = new Session();
               }
            }
            return instance;
         }
      }
      #endregion

      #region Constructor
      // Constructor
      public Session()
      {
         gmodel = new GenModel();
         this._KV = 0;
         this._MAS = 0;
      }
      #endregion

      #region INotifyPropertyChanged
      public event PropertyChangedEventHandler PropertyChanged;
      private void NotifyPropertyChanged(string str)
      {
         PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(str));
      }
      #endregion


      #region Properties

      //kv
      public double _KV
      {
         get
         {
            return this.gmodel.KV;
         }
         set
         {
            if (this.gmodel.KV != value)   
            {
               this.gmodel.KV = value;
               NotifyPropertyChanged("_KV");
            }
         }
      }//end kv

      //kv
      public double _MAS
      {
         get
         {
            return this.gmodel.MAS;
         }
         set
         {
            if (this.gmodel.MAS != value)
            {
               this.gmodel.MAS = value;
               NotifyPropertyChanged("_MAS");
            }
         }
      }//end kv


      #endregion

      #region Commands
      // return new Commands.DelegateCommand(Action => { this._KV++; });
      //private ICommand incKV = ;
      public ICommand IncKV
      {
         get { return new Commands.DelegateCommand(x => Instance._KV++); }
      }

      //private ICommand decKV = ;
      public ICommand DecKV
      {
         get { return new Commands.DelegateCommand(x => Instance._KV--); }
      }

      #endregion
   }
}
