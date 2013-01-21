// Auto-generated from editable_label.html.
// DO NOT EDIT.

library x_editable_label;

import 'dart:html' as autogenerated_html;
import 'dart:web_audio' as autogenerated_audio;
import 'dart:svg' as autogenerated_svg;
import 'package:web_ui/web_ui.dart' as autogenerated;

import 'dart:html';

import 'package:web_ui/web_ui.dart';

class EditableLabel extends WebComponent {
  
  /** Autogenerated from the template. */
  
  /**
  * Shadow root for this component. We use 'var' to allow simulating shadow DOM
  * on browsers that don't support this feature.
  */
  var _root;
  autogenerated_html.UnknownElement __e16;
  
  List<autogenerated.WatcherDisposer> __stoppers1;
  
  autogenerated_html.Node _endPosition__e16;
  
  bool _isVisible__e16 = false;
  
  autogenerated_html.AnchorElement __sad;
  
  List<autogenerated.WatcherDisposer> __stoppers2_1;
  
  var __binding15;
  
  EditableLabel.forElement(e) : super.forElement(e);
  
  void created_autogenerated() {
    _root = createShadowRoot();
    
    if (_root is autogenerated_html.ShadowRoot) _root.applyAuthorStyles = true;
    
    _root.innerHtml = '''
    
    <template id="__e-16" style="display:none"></template>
    <!--<template if="editing">
    <form on-submit="update(\$event)">
    
    on-blur="update(\$event)"
    on-key-up="maybeCancel(\$event)">
    </form>
    </template>-->
    ''';
    __e16 = _root.query('#__e-16');
    __stoppers1 = [];
    
  }
  
  void inserted_autogenerated() {
    _endPosition__e16 = __e16;
    
    __stoppers1.add(autogenerated.watchAndInvoke(() => !editing, (__e) {
      bool showNow = __e.newValue;
      if (_isVisible__e16 && !showNow) {
        _isVisible__e16 = false;
        
        (__stoppers2_1..forEach((s) => s())).clear();
        __sad = null;
        __binding15 = null;
        
        _endPosition__e16 = autogenerated.removeNodes(__e16, _endPosition__e16);
        
      } else if (!_isVisible__e16 && showNow) {
        
        _isVisible__e16 = true;
        
        __sad = new autogenerated_html.Element.html('<a target="_blank" id="sad"></a>');
        __binding15 = new autogenerated_html.Text('');
        __sad.nodes.add(__binding15);
        __stoppers2_1 = [];
        
        autogenerated.insertAllBefore(__e16.parentNode, __e16.nextNode,
        
        [new autogenerated_html.Text('\n      '), new autogenerated_html.Text('\n      '), new autogenerated_html.Text('\n      '), __sad, _endPosition__e16 = new autogenerated_html.Text('\n    ')]);
        
        __stoppers2_1.add(autogenerated.watchAndInvoke(() => value, (__e) { __sad.href = autogenerated.sanitizeUri(__e.newValue); }));
        __stoppers2_1.add(autogenerated.watchAndInvoke(() => '${titolo}', (__e) {
          __binding15 = autogenerated.updateBinding(titolo, __binding15, __e.newValue);
        }));
        
      }
    }));
    
  }
  
  void removed_autogenerated() {
    _root = null;
    
    (__stoppers1..forEach((s) => s())).clear();
    
    if (_isVisible__e16) {
      
      _endPosition__e16 = autogenerated.removeNodes(__e16, _endPosition__e16);
      
      (__stoppers2_1..forEach((s) => s())).clear();
      __sad = null;
      __binding15 = null;
      
    }
    
    __e16 = null;
    
  }
  
  void composeChildren() {
    super.composeChildren();
    if (_root is! autogenerated_html.ShadowRoot) _root = this;
  }
  
  /** Original code from the component. */
  
  bool editing;
  String value;
  String titolo; // da usare
  
  InputElement get _editBox => _root.query('#edit');
  
  void created() {
    super.created();
    editing = false;
    value = '';
    
  }
  
  void edit() {
    editing = true;
    dispatch();
    
    // For IE and Firefox: use .focus(), then reset the value to move the
    // cursor to the end.
    _editBox.focus();
    _editBox.value = '';
    _editBox.value = value;
  }
  
  void update(Event e) {
    e.preventDefault(); // don't submit the form
    if (!editing) return; // bail if user canceled
    value = _editBox.value;
    
    editing = false;
  }
  
  void maybeCancel(KeyboardEvent e) {
    if (e.keyCode == KeyCode.ESC) {
      editing = false;
    }
  }
}

