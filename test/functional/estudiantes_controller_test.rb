require 'test_helper'

class EstudiantesControllerTest < ActionController::TestCase
  setup do
    @estudiante = estudiantes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:estudiantes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create estudiante" do
    assert_difference('Estudiante.count') do
      post :create, estudiante: { apellido: @estudiante.apellido, direccion: @estudiante.direccion, edad: @estudiante.edad, edo_civil: @estudiante.edo_civil, fecha_nac: @estudiante.fecha_nac, lugar_nac: @estudiante.lugar_nac, nacionalidad: @estudiante.nacionalidad, nombre: @estudiante.nombre, pin: @estudiante.pin, sexo: @estudiante.sexo, twitter: @estudiante.twitter }
    end

    assert_redirected_to estudiante_path(assigns(:estudiante))
  end

  test "should show estudiante" do
    get :show, id: @estudiante
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @estudiante
    assert_response :success
  end

  test "should update estudiante" do
    put :update, id: @estudiante, estudiante: { apellido: @estudiante.apellido, direccion: @estudiante.direccion, edad: @estudiante.edad, edo_civil: @estudiante.edo_civil, fecha_nac: @estudiante.fecha_nac, lugar_nac: @estudiante.lugar_nac, nacionalidad: @estudiante.nacionalidad, nombre: @estudiante.nombre, pin: @estudiante.pin, sexo: @estudiante.sexo, twitter: @estudiante.twitter }
    assert_redirected_to estudiante_path(assigns(:estudiante))
  end

  test "should destroy estudiante" do
    assert_difference('Estudiante.count', -1) do
      delete :destroy, id: @estudiante
    end

    assert_redirected_to estudiantes_path
  end
end
