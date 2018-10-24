function clearUnits() {
  document.getElementById('quantity').value = '';
  document.getElementById('color').value = '';
  document.getElementById('size').value = '';
}

function saveUnits() {
  var contentUnit = document.getElementById('contentUnit');
  var content = contentUnit.innerHTML;
  let quantity = document.getElementById('quantity');
  let color = document.getElementById('color').value;
  let size = document.getElementById('size').value;

  response = `
  <tr>
    <td>12 unidades</td>
    <td>Côr azul</td>
    <td>Tamanho M</td>
    <td><input type="button" class="form-control btn btn-info" value="Editar"></td>
    <td><input type="button" class="form-control btn btn-danger" value="Editar"></td>
  </tr>
  `;
  contentUnit.innerHTML = response + content;

}