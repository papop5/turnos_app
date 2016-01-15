require 'test_helper'

class EvaluacionesControllerTest < ActionController::TestCase
  setup do
    @evaluacion = evaluaciones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:evaluaciones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create evaluacion" do
    assert_difference('Evaluacion.count') do
      post :create, evaluacion: { comentario: @evaluacion.comentario, pregunta1: @evaluacion.pregunta1, pregunta2: @evaluacion.pregunta2, pregunta3: @evaluacion.pregunta3, pregunta4: @evaluacion.pregunta4, resultado1: @evaluacion.resultado1, resultado2: @evaluacion.resultado2, resultado3: @evaluacion.resultado3, resultado4: @evaluacion.resultado4, resultado_total: @evaluacion.resultado_total, turno_id: @evaluacion.turno_id }
    end

    assert_redirected_to evaluacion_path(assigns(:evaluacion))
  end

  test "should show evaluacion" do
    get :show, id: @evaluacion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @evaluacion
    assert_response :success
  end

  test "should update evaluacion" do
    patch :update, id: @evaluacion, evaluacion: { comentario: @evaluacion.comentario, pregunta1: @evaluacion.pregunta1, pregunta2: @evaluacion.pregunta2, pregunta3: @evaluacion.pregunta3, pregunta4: @evaluacion.pregunta4, resultado1: @evaluacion.resultado1, resultado2: @evaluacion.resultado2, resultado3: @evaluacion.resultado3, resultado4: @evaluacion.resultado4, resultado_total: @evaluacion.resultado_total, turno_id: @evaluacion.turno_id }
    assert_redirected_to evaluacion_path(assigns(:evaluacion))
  end

  test "should destroy evaluacion" do
    assert_difference('Evaluacion.count', -1) do
      delete :destroy, id: @evaluacion
    end

    assert_redirected_to evaluaciones_path
  end
end
