describe('YelpLocatorTest', () => { 

  afterEach(() => {
    $T.clearRenderedTestComponents()
  })

  it('should accept input', (done) => {
    
    const attributes = {
      searchString: 'Indian'
    }

    $T.createComponent('c:YelpLocator', attributes, true)
      .then(component => {
        const value = document.querySelector('.search-input input.slds-input').value
        expect(value).toBe('Indian')
        done()
      })
      .catch(e => done.fail(e))
  })
})