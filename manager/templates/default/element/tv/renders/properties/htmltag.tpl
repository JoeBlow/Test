<div id="tv-wprops-form{$tv}"></div>
{literal}

<script type="text/javascript">
// <![CDATA[
var params = {
{/literal}{foreach from=$params key=k item=v name='p'}
 '{$k}': '{$v}'{if NOT $smarty.foreach.p.last},{/if}
{/foreach}{literal}
};
var oc = {'change':{fn:function(){Ext.getCmp('modx-panel-tv').markDirty();},scope:this}};
MODx.load({
    xtype: 'panel'
    ,layout: 'form'
    ,autoHeight: true
    ,labelWidth: 150
    ,border: false
    ,items: [{
        xtype: 'textfield'
        ,fieldLabel: _('tag_name')
        ,name: 'prop_tagname'
        ,id: 'prop_tagname{/literal}{$tv}{literal}'
        ,value: params['tagname'] || 'div'
        ,listeners: oc
    },{
        xtype: 'textfield'
        ,fieldLabel: _('tag_id')
        ,name: 'prop_tagid'
        ,id: 'prop_tagid{/literal}{$tv}{literal}'
        ,value: params['tagid'] || ''
        ,listeners: oc
    },{
        xtype: 'textfield'
        ,fieldLabel: _('class')
        ,name: 'prop_class'
        ,id: 'prop_class{/literal}{$tv}{literal}'
        ,value: params['class'] || ''
        ,listeners: oc
    },{
        xtype: 'textfield'
        ,fieldLabel: _('style')
        ,name: 'prop_style'
        ,id: 'prop_style{/literal}{$tv}{literal}'
        ,value: params['style'] || ''
        ,listeners: oc
    },{
        xtype: 'textfield'
        ,fieldLabel: _('attributes')
        ,name: 'prop_attrib'
        ,id: 'prop_attrib{/literal}{$tv}{literal}'
        ,value: params['attrib'] || ''
        ,listeners: oc
    }]
    ,renderTo: 'tv-wprops-form{/literal}{$tv}{literal}'
});
// ]]>
</script>
{/literal}