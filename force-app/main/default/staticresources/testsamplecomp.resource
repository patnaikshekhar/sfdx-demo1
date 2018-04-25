describe("testsamplecomp", () => { 

  afterEach(() => {
    $T.clearRenderedTestComponents()
  })

  it("should render banner", (done) => {
    $T.createComponent('c:samplecomp', {}, true)
      .then((component) => {
        expect(document.getElementById('banner').textContent)
          .toEqual('This is a test component')
        done()
      })
      .catch(e => done.fail(e))
  })

  it("should increment count", (done) => {
    $T.createComponent('c:samplecomp', {}, false)
      .then((component) => {
        component.click();
        expect(component.get('v.count')).toEqual(2)
        done()
      })
      .catch(e => done.fail(e))
  })

  it("count should be visible on the UI", (done) => {
    $T.createComponent('c:samplecomp', { count: 5 }, true)
      .then((component) => {
        component.click();
        const countElement = document.getElementById('count')
        expect(parseInt(countElement.innerText)).toEqual(6)
        done()
      })
      .catch(e => done.fail(e))
  })

  
})