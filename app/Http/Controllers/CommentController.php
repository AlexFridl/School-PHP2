<?php

namespace App\Http\Controllers;

use App\Models\Activity;
use App\Models\Comment;
use Illuminate\Http\Request;

class CommentController extends Controller
{
    public function adminComments() {
        $comments = new Comment();

        try {
            $this->data['comments'] = $comments->get_comments();
        } catch (\Exception $ex) {
            \Log::error('Greska: ' . $ex->getMessage());
        }
        return view('pages.adminComments', $this->data);
    }
    public function adminComments_delete($id_comment) {
        $comment = new Comment();
        $comment->id_comment = $id_comment;
        $query = 'DELETE_comment';
        $id_user = 1;
        try {
            $rez = $comment->delete_comment($id_comment);
            if ($rez == true) {
                $activity = new Activity();
                $write = $activity->insertActivity($query, $id_user);
                return redirect()->route('adminComments')->with('poruka', 'Uspesno brisanje!');
            } else {
                return redirect()->route('adminComments')->with('poruka', 'Nije uspelo brisanje!');
            }
        } catch (\Exception $ex) {
            \Log::error('Greska: ' . $ex->getMessage());
        }
    }
}
