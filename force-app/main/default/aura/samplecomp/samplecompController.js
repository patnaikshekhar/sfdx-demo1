({
    init : function(component, event, helper) {
        console.log('In init')
    },

    click: function(component, event, helper) {
        var currentCount = component.get('v.count');
        component.set('v.count', currentCount + 1);
    }
})
