<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Support\Facades\DB;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;


    public function proyectos(){


        $proyectos = DB::table('proyectos')->get();


        return view('principal' , [

            'proyectos' => $proyectos
        ]);





    }

    // con este metodo sacas los participantes del proyecto

    public function participantes(){

        $usuarios = DB::table('usuarios')
            ->join('usuarios', 'usarios.id_proyecto', '=', 'proyectos.id_proyecto')
            ->select('usuarios.nombre')
            ->get();


            return view ('participantes' , [
                'usuarios' => $usuarios
            ]);
    }


    // metodo para listar incidencias del que un usuario tiene acceso
    // ,contando con que el rol es 1 siendo responsable , 2 siendo participante
    // y 3 siendo tanto participante como responsable

    public function incidencias(){

        $incidencias = DB::table('incidencia')
        ->join('actividad', 'incidencia.id_incidencia', '=', 'actividad.id_incidencia')
        ->join('proyectos', 'actividad.id_actividad', '=', 'proyectos.id_actividad')
        ->join('usuarios' , 'proyectos.id_proyecto' , '=' , 'usuarios.id_proyecto')
        ->select('incidencias.nombre')
        ->where('usuarios.rol = 2')
        ->where('usuarios.rol = 3')
        ->get();


            return view ('participantes' , [
                'incidencias' => $incidencias
            ]);
    }

    // metodo para sacar las actividades en las que tiene acceso un participante según su rol de acceso 

    public function actividades(){

        $actividades = DB::table('actividades')
        ->join('proyectos', 'actividad.id_actividad', '=', 'proyectos.id_actividad')
        ->join('usuarios' , 'proyectos.id_proyecto' , '=' , 'usuarios.id_proyecto')
        ->select('actividades.nombre')
        ->where('usuarios.rol = 2')
        ->where('usuarios.rol = 3')
        ->get();


            return view ('participantes' , [
                'actividades' => $actividades

            ]);


}


}




