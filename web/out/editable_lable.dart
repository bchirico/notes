// Auto-generated from editable_label.html.
// DO NOT EDIT.

library x_editable_label;

import 'dart:html' as autogenerated;
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
  autogenerated.Element __e16;
  autogenerated.Template __t;
  
  EditableLabel.forElement(e) : super.forElement(e);
  
  void created_autogenerated() {
    _root = createShadowRoot();
    __t = new autogenerated.Template(_root);
    if (_root is autogenerated.ShadowRoot) _root.applyAuthorStyles = true;
    
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
    __t.conditional(__e16, () => (!editing), (__t) {
      var __sad;
      __sad = new autogenerated.Element.html('<a target="_blank" id="sad"></a>');
      var __binding15 = __t.contentBind(() => (titolo));
      __sad.nodes.add(__binding15);
      __t.oneWayBind(() => (value), (e) { __sad.href = e; }, true);
      __t.addAll([
        new autogenerated.Text('\n      '),
        new autogenerated.Text('\n      '),
        new autogenerated.Text('\n      '),
        __sad,
        new autogenerated.Text('\n    ')
      ]);
    });
    
    __t.create();
  }
  
  void inserted_autogenerated() {
    __t.insert();
  }
  
  void removed_autogenerated() {
    __t.remove();
    __e16 = __t = null;
  }
  
  void composeChildren() {
    super.composeChildren();
    if (_root is! autogenerated.ShadowRoot) _root = this;
  }
  
  /** Original code from the component. */
  
  bool editing;
  String value;
  String titolo; // da usare
  
  InputElement get _editBox => document.query('#edit');
  
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
