﻿#pragma checksum "..\..\..\Windows\WindowNear.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "9780ED0E03B21B8E3C6E0AEF052F6E82EA599C672EBDC62E67F8D37DA67D1582"
//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан программой.
//     Исполняемая версия:4.0.30319.42000
//
//     Изменения в этом файле могут привести к неправильной работе и будут потеряны в случае
//     повторной генерации кода.
// </auto-generated>
//------------------------------------------------------------------------------

using SchoolService;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace SchoolService {
    
    
    /// <summary>
    /// MainWindow
    /// </summary>
    public partial class MainWindow : System.Windows.Window, System.Windows.Markup.IComponentConnector, System.Windows.Markup.IStyleConnector {
        
        
        #line 20 "..\..\..\Windows\WindowNear.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ListView ListViewService;
        
        #line default
        #line hidden
        
        
        #line 52 "..\..\..\Windows\WindowNear.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox ComboBoxSort;
        
        #line default
        #line hidden
        
        
        #line 59 "..\..\..\Windows\WindowNear.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox TextBoxFind;
        
        #line default
        #line hidden
        
        
        #line 63 "..\..\..\Windows\WindowNear.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox TextBoxFindDescription;
        
        #line default
        #line hidden
        
        
        #line 65 "..\..\..\Windows\WindowNear.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox ComboBoxFilter;
        
        #line default
        #line hidden
        
        
        #line 74 "..\..\..\Windows\WindowNear.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBlock TextBlockNumberOfServices;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/SchoolService;component/windows/windownear.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\Windows\WindowNear.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            this.ListViewService = ((System.Windows.Controls.ListView)(target));
            return;
            case 5:
            this.ComboBoxSort = ((System.Windows.Controls.ComboBox)(target));
            
            #line 52 "..\..\..\Windows\WindowNear.xaml"
            this.ComboBoxSort.SelectionChanged += new System.Windows.Controls.SelectionChangedEventHandler(this.SelectionChange);
            
            #line default
            #line hidden
            return;
            case 6:
            this.TextBoxFind = ((System.Windows.Controls.TextBox)(target));
            
            #line 59 "..\..\..\Windows\WindowNear.xaml"
            this.TextBoxFind.TextChanged += new System.Windows.Controls.TextChangedEventHandler(this.TextChange);
            
            #line default
            #line hidden
            return;
            case 7:
            this.TextBoxFindDescription = ((System.Windows.Controls.TextBox)(target));
            
            #line 63 "..\..\..\Windows\WindowNear.xaml"
            this.TextBoxFindDescription.TextChanged += new System.Windows.Controls.TextChangedEventHandler(this.TextChange);
            
            #line default
            #line hidden
            return;
            case 8:
            this.ComboBoxFilter = ((System.Windows.Controls.ComboBox)(target));
            
            #line 65 "..\..\..\Windows\WindowNear.xaml"
            this.ComboBoxFilter.SelectionChanged += new System.Windows.Controls.SelectionChangedEventHandler(this.SelectionChange);
            
            #line default
            #line hidden
            return;
            case 9:
            this.TextBlockNumberOfServices = ((System.Windows.Controls.TextBlock)(target));
            return;
            case 10:
            
            #line 75 "..\..\..\Windows\WindowNear.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.ClickAddService);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        void System.Windows.Markup.IStyleConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 2:
            
            #line 41 "..\..\..\Windows\WindowNear.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.ClickChange);
            
            #line default
            #line hidden
            break;
            case 3:
            
            #line 42 "..\..\..\Windows\WindowNear.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.ClickRemove);
            
            #line default
            #line hidden
            break;
            case 4:
            
            #line 43 "..\..\..\Windows\WindowNear.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.ClickAddClientToService);
            
            #line default
            #line hidden
            break;
            }
        }
    }
}

